# import_data.py

import json
import mysql.connector
from mysql.connector import Error
import sys

# --- Constants and Configuration ---
TENANT_ID = "df234305-8a47-4b4d-8efb-716a6b695428"
IMPORT_USER_ID = "bf255bcc-e2db-4d47-8e3e-5b8b7b4f105d"
CLIENT_JSON_FILE = "client_hierarchy_map.json"
USER_JSON_FILE = "role_based_user_map.json"
OUTPUT_SQL_FILE = "generated_import_data.sql"

# --- IMPORTANT: Update with your database credentials ---
DB_CONFIG = {
    "host": "localhost",
    "user": "your_username",
    "password": "your_password",
    "database": "pmv_user_service",
}

# --- Data Mappings ---
ROLE_ID_MAP = {"inventors": 3, "patent_agents": 4, "analysts": 8, "reviewers": 10}

# --- Helper Functions ---


def parse_name(full_name):
    """Parses a full name into first and last name, handling simple prefixes."""
    name_parts = full_name.split()
    if name_parts and name_parts[0] in ["Mr.", "Mrs.", "Ms."]:
        name_parts = name_parts[1:]

    first_name = name_parts[0] if name_parts else ""
    last_name = name_parts[-1] if len(name_parts) > 1 else ""

    return first_name, last_name


def main():
    """Main function to process JSON and push to DB."""

    # Lists to hold tuples of (sql_template, params) for direct DB execution
    execution_commands = []

    # Lists to hold generated SQL command strings for the .sql file
    client_sql_for_file = []
    user_sql_for_file = []
    role_mapping_sql_for_file = []
    inventor_sql_for_file = []

    # --- 1. Process Clients ---
    print(f"\nProcessing clients from '{CLIENT_JSON_FILE}'...")
    try:
        with open(CLIENT_JSON_FILE, "r") as f:
            clients_data = json.load(f)
    except FileNotFoundError:
        print(f"Error: The file '{CLIENT_JSON_FILE}' was not found.")
        sys.exit(1)

    for client_name, data in clients_data.items():
        client_id = data.get("uuid")
        if not client_id:
            continue

        # For live execution (safer)
        sql = "INSERT INTO `client` (`id`, `tenant_id`, `client_name`) VALUES (%s, %s, %s);"
        params = (client_id, TENANT_ID, client_name)
        execution_commands.append(("client", sql, params))

        # For the .sql file (requires manual string escaping)
        safe_client_name = client_name.replace("'", "''")
        client_sql_for_file.append(
            f"INSERT INTO `client` (`id`, `tenant_id`, `client_name`) VALUES ('{client_id}', '{TENANT_ID}', '{safe_client_name}');"
        )

    print(f"Generated {len(client_sql_for_file)} INSERT statements for clients.")

    # --- 2. Process Users, Roles, and Inventors ---
    print(f"\nProcessing users and roles from '{USER_JSON_FILE}'...")
    try:
        with open(USER_JSON_FILE, "r") as f:
            users_data = json.load(f)
    except FileNotFoundError:
        print(f"Error: The file '{USER_JSON_FILE}' was not found.")
        sys.exit(1)

    processed_user_ids = set()

    for role_name, users in users_data.items():
        role_id = ROLE_ID_MAP.get(role_name)
        if not role_id:
            print(f"Warning: Role '{role_name}' not found in ROLE_ID_MAP. Skipping.")
            continue

        for full_name, user_id in users.items():
            # Add user to 'user' table only if not already processed
            if user_id not in processed_user_ids:
                first_name, last_name = parse_name(full_name)
                email = f"{first_name.lower()}.{last_name.lower()}@example.com"

                # For live execution
                sql = "INSERT INTO `user` (`id`, `tenant_id`, `full_name`, `first_name`, `last_name`, `email`, `visibility`) VALUES (%s, %s, %s, %s, %s, %s, 1);"
                params = (user_id, TENANT_ID, full_name, first_name, last_name, email)
                execution_commands.append(("user", sql, params))

                # For the .sql file
                safe_full_name = full_name.replace("'", "''")
                safe_first_name = first_name.replace("'", "''")
                safe_last_name = last_name.replace("'", "''")
                user_sql_for_file.append(
                    f"INSERT INTO `user` (`id`, `tenant_id`, `full_name`, `first_name`, `last_name`, `email`, `visibility`) VALUES ('{user_id}', '{TENANT_ID}', '{safe_full_name}','{safe_first_name}','{safe_last_name}','{email}',1);"
                )
                processed_user_ids.add(user_id)

            # Add role mapping for every user-role combination
            sql = "INSERT INTO `role_user_mapping` (`role_id`, `user_id`, `added_by`) VALUES (%s, %s, %s);"
            params = (role_id, user_id, IMPORT_USER_ID)
            execution_commands.append(("role_user_mapping", sql, params))
            role_mapping_sql_for_file.append(
                f"INSERT INTO `role_user_mapping` (`role_id`, `user_id`, `added_by`) VALUES ({role_id}, '{user_id}', '{IMPORT_USER_ID}');"
            )

            # For the .sql file, add the dependent inventor insert
            if role_name == "inventors":
                inventor_sql_for_file.append(
                    f"INSERT INTO `inventors` (`tenant_id`, `role_user_id`) "
                    f"SELECT '{TENANT_ID}', id FROM `role_user_mapping` WHERE user_id = '{user_id}' AND role_id = {role_id};"
                )

    print(f"Generated {len(user_sql_for_file)} INSERT statements for unique users.")
    print(
        f"Generated {len(role_mapping_sql_for_file)} INSERT statements for role mappings."
    )
    print(f"Generated {len(inventor_sql_for_file)} INSERT statements for inventors.")

    # --- 3. Execute SQL against the database ---
    connection = None
    try:
        print(f"\nConnecting to database '{DB_CONFIG['database']}'...")
        connection = mysql.connector.connect(**DB_CONFIG)
        cursor = connection.cursor()

        print("Executing SQL commands in a transaction...")

        # NOTE: This execution part relies on `cursor.lastrowid`, which requires AUTO_INCREMENT keys.
        for cmd_type, sql, params in execution_commands:
            cursor.execute(sql, params)
            # If the command was for role_user_mapping and the role was an inventor, insert into inventors table
            if (
                cmd_type == "role_user_mapping"
                and params[0] == ROLE_ID_MAP["inventors"]
            ):
                role_user_id = cursor.lastrowid
                if not role_user_id:
                    print(
                        "Warning: Could not get last insert ID for role_user_mapping. Skipping inventor insert."
                    )
                    print(
                        "         Ensure the 'id' column in 'role_user_mapping' is an AUTO_INCREMENT PRIMARY KEY."
                    )
                else:
                    inventor_sql = "INSERT INTO `inventors` (`tenant_id`, `role_user_id`) VALUES (%s, %s);"
                    cursor.execute(inventor_sql, (TENANT_ID, role_user_id))

        connection.commit()
        print(f"\nSuccessfully committed all changes to the database.")

    except Error as e:
        print(f"\nError connecting to MySQL or executing query: {e}")
        if connection and connection.is_connected():
            connection.rollback()
            print("Transaction rolled back due to error.")

    finally:
        if connection and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")

    # --- 4. Write all generated SQL commands to the output file ---
    try:
        with open(OUTPUT_SQL_FILE, "w") as f:
            f.write(f"-- Generated SQL Data Import\n")
            f.write(f"-- Database: {DB_CONFIG['database']}\n\n")
            f.write(f"USE `{DB_CONFIG['database']}`;\n\n")

            f.write("-- Client Inserts\n")
            f.write("\n".join(client_sql_for_file) + "\n")

            f.write("\n-- User Inserts\n")
            f.write("\n".join(user_sql_for_file) + "\n")

            f.write("\n-- Role Mapping Inserts\n")
            f.write("\n".join(role_mapping_sql_for_file) + "\n")

            f.write("\n-- Inventor Inserts (Depends on role_user_mapping)\n")
            f.write("\n".join(inventor_sql_for_file) + "\n")

        print(f"\nAll SQL commands have been saved to '{OUTPUT_SQL_FILE}'")
    except IOError as e:
        print(f"Error writing to SQL file: {e}")


# This is the correct way to call the main function
if __name__ == "__main__":
    main()
