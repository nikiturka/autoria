import os
import psycopg2
import logging


class AutoriaPipeline:
    def __init__(self):
        self.connection = None
        self.cur = None
        self.connect_to_database()
        self.create_table()

    def connect_to_database(self):
        try:
            self.connection = psycopg2.connect(
                dbname="test_dataox",
                user="postgres",
                password="postgres",
                host="localhost",
                port="5432"
            )
            self.cur = self.connection.cursor()
            logging.info("Connected to database successfully!")
        except psycopg2.OperationalError as e:
            logging.error(f"Error connecting to database: {e}")

    def create_table(self):
        if self.connection is None or self.connection.closed:
            self.connect_to_database()

        sql = """
            CREATE TABLE IF NOT EXISTS cars (
                id SERIAL PRIMARY KEY,
                url TEXT,
                title TEXT,
                price_usd TEXT,
                odometer INTEGER,
                username TEXT,
                phone_number TEXT,
                image_url TEXT,
                images_count INTEGER,
                car_number TEXT,
                car_vin TEXT
            )
        """
        try:
            self.cur.execute(sql)
            self.connection.commit()
            logging.info("Table 'cars' created successfully!")
        except Exception as e:
            logging.error(f"Error creating table: {e}")

    def process_item(self, item, spider):
        if self.connection is None or self.connection.closed:
            self.connect_to_database()

        sql = """
            INSERT INTO cars (url, title, price_usd, odometer, username, phone_number, image_url, images_count, car_number, car_vin)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """
        values = (
            item['url'],
            item['title'],
            item['price_usd'],
            item['odometer'],
            item['username'],
            item['phone_number'],
            item['image_url'],
            item['images_count'],
            item['car_number'],
            item['car_vin']
        )

        try:
            self.cur.execute(sql, values)
            self.connection.commit()
            logging.info("Item inserted into database successfully!")
        except Exception as e:
            logging.error(f"Error inserting item into database: {e}")

        return item
