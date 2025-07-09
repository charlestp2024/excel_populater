import mysql.connector
import os
from mysql.connector import Error

# Configuration
HOST = 'localhost'
PORT = 3306
USER = 'root'
PASSWORD = 'root'  # 🔒 replace this
DATABASES = [
    'pmv_csd',
    'pmv_dr',
    'pmv_drafting',
    'pmv_invention_disclosure',
    'pmv_prosecution'
]
SQL_FOLDER = 'empty_database'

# Additional generated SQL filenames
OUTPUT_INVD_SQL_FILENAME = "generated_pmv_invention_disclosure_inserts.sql"
OUTPUT_DRAFTING_SQL_FILENAME = "generated_pmv_drafting_inserts.sql"
OUTPUT_DOCKET_REVIEW_SQL_FILENAME = "generated_pmv_dr_inserts.sql"
OUTPUT_PMV_CSD_SQL_FILENAME = "generated_pmv_csd_inserts.sql"
OUTPUT_PROSECUTION_SQL_FILENAME = "generated_pmv_prosecution_inserts.sql"

def execute_sql_file(cursor, file_path):
    """Read and execute SQL commands from a file."""
    with open(file_path, 'r', encoding='utf-8') as file:
        sql_commands = file.read()
        for command in sql_commands.split(';'):
            if command.strip():
                cursor.execute(command)

def main():
    try:
        connection = mysql.connector.connect(
            host=HOST,
            port=PORT,
            user=USER,
            password=PASSWORD
        )

        if connection.is_connected():
            print("✅ Connected to MySQL Server")
            cursor = connection.cursor()

            # Drop and create databases, then import schema SQL files
            for db_name in DATABASES:
                print(f"\n⚙️  Dropping database `{db_name}` if exists...")
                cursor.execute(f"DROP DATABASE IF EXISTS `{db_name}`")

                print(f"📦 Creating database `{db_name}`...")
                cursor.execute(f"CREATE DATABASE `{db_name}`")

                sql_file_path = os.path.join(SQL_FOLDER, f"{db_name}.sql")
                if os.path.exists(sql_file_path):
                    print(f"📥 Importing `{sql_file_path}` into `{db_name}`...")
                    cursor.execute(f"USE `{db_name}`")
                    execute_sql_file(cursor, sql_file_path)
                    print(f"✅ {db_name} schema imported.")
                else:
                    print(f"⚠️  Schema SQL file for `{db_name}` not found. Skipping import.")

            connection.commit()
            print("\n🎉 All databases recreated and schema imported successfully.")

            # Now run the generated data insert files into respective DBs
            generated_files = [
                (OUTPUT_INVD_SQL_FILENAME, 'pmv_invention_disclosure'),
                (OUTPUT_DRAFTING_SQL_FILENAME, 'pmv_drafting'),
                (OUTPUT_DOCKET_REVIEW_SQL_FILENAME, 'pmv_dr'),
                (OUTPUT_PMV_CSD_SQL_FILENAME, 'pmv_csd'),
                (OUTPUT_PROSECUTION_SQL_FILENAME, 'pmv_prosecution')
            ]

            for file_name, db_name in generated_files:
                file_path = os.path.join(os.getcwd(), file_name)
                if os.path.exists(file_path):
                    print(f"\n📥 Importing `{file_name}` into `{db_name}`...")
                    cursor.execute(f"USE `{db_name}`")
                    execute_sql_file(cursor, file_path)
                    print(f"✅ Data from `{file_name}` imported into `{db_name}`.")
                else:
                    print(f"⚠️  Data SQL file `{file_name}` not found. Skipping.")

            connection.commit()
            print("\n🚀 All generated SQL files executed successfully.")

    except Error as e:
        print(f"❌ Error: {e}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("🔌 MySQL connection closed.")

if __name__ == '__main__':
    main()
