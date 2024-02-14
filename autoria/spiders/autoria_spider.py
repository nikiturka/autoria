import scrapy
from autoria.items import AutoRiaItem

class AutoRiaSpider(scrapy.Spider):
    name = 'autoria'
    start_urls = ['https://auto.ria.com/uk/car/used/?page=1']
    page_limit = 6

    def __init__(self):
        super(AutoRiaSpider, self).__init__()
        self.next_page = 2
        self.total_items_on_page = 0
        self.parsed_items_on_page = 0

    def parse(self, response):
        car_sections = response.css('section.ticket-item')

        for car_section in car_sections:
            content_bar = car_section.css('div.content-bar')
            link = content_bar.css('a.m-link-ticket::attr(href)').get()
            yield response.follow(link, callback=self.parse_car)

        self.total_items_on_page += len(car_sections)

    def parse_car(self, response):
        item = AutoRiaItem()

        item['url'] = response.url
        item['title'] = response.css("div.heading h1::text").get()
        item['price_usd'] = response.css("section.price.mb-15.mhide div.price_value strong::text").get()
        item['odometer'] = int(response.css("div.base-information.bold span::text").get()) * 1000
        item['username'] = self.extract_username(response)
        item['phone_number'] = response.css('div.phones_item span.mhide::text').get()
        item['image_url'] = response.css("div.carousel-inner div.photo-620x465:first-of-type source::attr(srcset)").get()
        item['images_count'] = self.split_photo_count(response.css("a.show-all.link-dotted::text").get())
        item['car_number'] = response.css("span.state-num.ua::text").get()
        item['car_vin'] = response.css("span.label-vin::text").get()

        self.parsed_items_on_page += 1

        yield item

        if self.parsed_items_on_page == self.total_items_on_page:
            self.log(f"All items on page '{self.next_page - 1}' have been parsed.")

            if self.next_page <= self.page_limit:
                next_page = f"https://auto.ria.com/uk/car/used/?page={self.next_page}"
                self.next_page += 1

                yield response.follow(next_page, callback=self.parse)

    @staticmethod
    def split_photo_count(string):
        if string:
            return string.split(" ")[2]
        return None

    @staticmethod
    def extract_username(response):
        username = response.css(".seller_info_name::text").get()
        if username == ' ':
            username = response.css(".seller_info_name a::text").get()
        return username
