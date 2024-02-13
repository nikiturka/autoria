import scrapy

from autoria.items import AutoRiaItem


class AutoRiaSpider(scrapy.Spider):
    name = 'autoria'
    start_urls = ['https://auto.ria.com/uk/car/used/?page=1']
    next_page = 2
    total_items_on_page = 0
    parsed_items_on_page = 0
    page_limit = 6

    def parse(self, response):
        sections = response.css('section.ticket-item')

        for section in sections:
            content_bar = section.css('div.content-bar')
            link = content_bar.css('a.m-link-ticket::attr(href)').get()
            yield response.follow(link, callback=self.parse_car)

        self.total_items_on_page += len(sections)

    def parse_car(self, response):
        items = AutoRiaItem()

        title = response.css("div.heading h1::text").get()
        price_usd = response.css("section.price.mb-15.mhide div.price_value strong::text").get()

        odometer_html = response.css("div.base-information.bold span::text").get()
        odometer = int(odometer_html) * 1000

        username = response.css(".seller_info_name::text").get()
        if username == ' ':
            username = response.css(".seller_info_name a::text").get()

        phone_number = response.css('div.phones_item span.mhide::text').get()
        image_url = response.css("div.carousel-inner div.photo-620x465:first-of-type source::attr(srcset)").get()
        images_count_string = response.css("a.show-all.link-dotted::text").get()
        images_count = split_photo_count(images_count_string)
        car_number = response.css("span.state-num.ua::text").get()
        car_vin = response.css("span.label-vin::text").get()

        self.parsed_items_on_page += 1

        items['url'] = response.url
        items['title'] = title
        items['price_usd'] = price_usd
        items['odometer'] = odometer
        items['username'] = username
        items['phone_number'] = phone_number
        items['image_url'] = image_url
        items['images_count'] = images_count
        items['car_number'] = car_number
        items['car_vin'] = car_vin

        yield items

        if self.parsed_items_on_page == self.total_items_on_page:
            self.log(f"All items on page '{self.next_page - 1}' have been parsed.")

            if self.next_page < self.page_limit:
                next_page = f"https://auto.ria.com/uk/car/used/?page={self.next_page}"
                self.next_page += 1

                yield response.follow(next_page, callback=self.parse)


def split_photo_count(string):
    string_split = string.split(" ")
    return string_split[2]
