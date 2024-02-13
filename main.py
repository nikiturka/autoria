import os
import time
import subprocess
import schedule
from dotenv import load_dotenv

load_dotenv()

db_name = os.environ.get("DB_NAME")
db_user = os.environ.get("DB_USER")
db_password = os.environ.get("DB_PASSWORD")
db_host = os.environ.get("DB_HOST")
db_port = os.environ.get("DB_PORT")


def run_spider():
    print("Running spider...")
    subprocess.run(["scrapy", "crawl", "autoria"])


def create_db_dump():
    print("Creating database dump...")
    timestamp = time.strftime("%Y-%m-%d_%H-%M-%S")
    dump_file = f"dumps/db_dump_{timestamp}.sql"

    with open(dump_file, 'w') as f:
        subprocess.run([
            'pg_dump',
            f'--dbname=postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}'
        ], stdout=f)
    print("Successfully created database dump.")


if __name__ == "__main__":
    # schedule.every(12).hours.do(run_spider)
    # schedule.every(12).hours.do(create_db_dump)
    schedule.every(10).seconds.do(run_spider)
    schedule.every(10).seconds.do(create_db_dump)
    try:
        while True:
            schedule.run_pending()
            time.sleep(1)
    except KeyboardInterrupt:
        print("Scheduler stopped.")
