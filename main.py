import time
import subprocess
import schedule


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
            '--dbname=postgresql://postgres:postgres@localhost:5432/test_dataox'
        ], stdout=f)
    print("Successfully created database dump.")


if __name__ == "__main__":
    # schedule.every(10).seconds.do(run_spider)
    # schedule.every(10).seconds.do(create_db_dump)
    run_spider()
    create_db_dump()
    try:
        while True:
            schedule.run_pending()
            time.sleep(1)
    except KeyboardInterrupt:
        print("Scheduler stopped.")
