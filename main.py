import time
import subprocess


def run_spider():
    print("Running spider...")
    subprocess.run(["scrapy", "crawl", "autoria"])  # Замените "autoria" на имя вашего паука


if __name__ == "__main__":
    while True:
        run_spider()
        print("Waiting for 30 seconds before next run...")
        time.sleep(30)
