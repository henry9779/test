require 'open-uri'
require 'nokogiri'

url = 'https://www.tenlong.com.tw/zh_tw/recent_bestselling?range=7'

page = Nokogiri::HTML(open(url))
books = page.css('.single-book > .title > a') #css選取器 . 尋找  > 往下

books.each do |book|
    puts books
end