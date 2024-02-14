import os
import time
import subprocess
import schedule
from dotenv import load_dotenv
import logging

load_dotenv("/app/.env")
load_dotenv("/app/.env.example")

db_name = os.environ.get("DOCKER_POSTGRES_DB")
db_user = os.environ.get("DOCKER_POSTGRES_USER")
db_password = os.environ.get("DOCKER_POSTGRES_PASSWORD")
db_host = os.environ.get("DOCKER_POSTGRES_HOST")
db_port = os.environ.get("DOCKER_POSTGRES_PORT")


def run_spider():
    logging.info("Running spider...")
    subprocess.run(["scrapy", "crawl", "autoria"])


def create_db_dump():
    logging.info("Creating database dump...")

    current_timestamp = time.strftime("%Y%m%d%H%M%S")
    dump_filename = f"dumps/db_dump_{current_timestamp}.sql"
    db_url = f"postgresql://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}"

    with open(dump_filename, 'wb') as f:
        subprocess.run(['pg_dump', '--dbname', db_url], stdout=f)

    logging.info(f"Database dump created at: {dump_filename}")


if __name__ == "__main__":
    # To run every day at 12:00
    # schedule.every(12).hours.do(run_spider)
    # schedule.every(12).hours.do(create_db_dump)

    run_spider()
    create_db_dump()
    try:
        while True:
            schedule.run_pending()
            time.sleep(1)
    except KeyboardInterrupt:
        print("Scheduler stopped.")
