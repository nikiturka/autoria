INSTRUCTION:

1) In IDE open the folder where you want to download the project

After that in terminal

1) git clone https://github.com/nikiturka/autoria 
2) cd autoria
3) docker-compose up

DESCRIPTION:
So, I decided to use Scrapy, because this framework is more powerful, than BeautifulSoup4
and Selenium (in terms of scraping). Also, I used psycopg2 to connect to docker database
and create table / fields there.

The main file of the project - main.py. Every day at 12:00 it runs run_spider() and create_db_dump() .

run_spider() scrapes information and saves it to database. In autoria/spiders folder
there is the main class that scrapes information from the site.
After it gets scraped, it's temporarily saved in an Item (autoria/items), and then every
item gets stored to the database with process_item function of AutoriaPipeline class
(autoria/pipelines).

create_db_dump() creates a dump of the database, using 'pg_dump' and storing it into dumps
folder. The program is running until 'KeyboardInterrupt'.