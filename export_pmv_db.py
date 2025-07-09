import mysql.connector
import os
import subprocess
from datetime import datetime
from mysql.connector import Error

# Config (same as yours)
HOST = "192.168.10.220"
PORT = 3306
USER = "charles"
PASSWORD = "Chrl3s!u2024#"
mysqldump_path = r"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe"


def get_pmv_databases(connection):
    cursor = connection.cursor()
    cursor.execute("SHOW DATABASES LIKE 'pmv%'")
    dbs = [db[0] for db in cursor.fetchall()]
    cursor.close()
    return dbs


def export_database(db_name, output_folder):
    dump_file = os.path.join(output_folder, f"{db_name}.sql")
    print(f"Exporting `{db_name}` to `{dump_file}`...")

    # Build mysqldump command
    command = [
        mysqldump_path,
        f"--host={HOST}",
        f"--port={PORT}",
        f"--user={USER}",
        f"--password={PASSWORD}",
        "--single-transaction",
        "--routines",
        "--events",
        "--skip-lock-tables",  # ← Add this line
        db_name,
    ]

    with open(dump_file, "w", encoding="utf-8") as f:
        # Run mysqldump and write output to file
        result = subprocess.run(command, stdout=f, stderr=subprocess.PIPE, text=True)
        if result.returncode != 0:
            print(f"❌ Error exporting `{db_name}`:\n{result.stderr}")
        else:
            print(f"✅ Exported `{db_name}` successfully.")


def main():
    try:
        connection = mysql.connector.connect(
            host=HOST, port=PORT, user=USER, password=PASSWORD
        )
        if connection.is_connected():
            print("✅ Connected to MySQL Server")

            # Get all databases starting with 'pmv'
            pmv_dbs = get_pmv_databases(connection)
            if not pmv_dbs:
                print("No databases starting with 'pmv' found.")
                return

            # Create output folder with date
            date_str = datetime.now().strftime("%Y%m%d")
            output_folder = f"PMV_DB_{date_str}"
            os.makedirs(output_folder, exist_ok=True)
            print(f"Export folder created: {output_folder}")

            # Export each database
            for db in pmv_dbs:
                export_database(db, output_folder)

    except Error as e:
        print(f"❌ Error: {e}")

    finally:
        if connection.is_connected():
            connection.close()
            print("🔌 MySQL connection closed.")


if __name__ == "__main__":
    main()
