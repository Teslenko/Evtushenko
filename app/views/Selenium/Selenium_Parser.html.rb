# require 'rubygems'
# require "selenium-webdriver"
# driver = Selenium::WebDriver.for :firefox
# driver.get("http://www.google.com");
# sleep (0.7)
#
require 'watir'

browser = Watir::Browser.new :firefox

browser.goto 'https://www.google.com.ua'  #- открыть ссылку
browser.text_field(name: 'q').set 'Vova'  #- ввести значение
browser.link(text: 'Почта').click         #- кликнуть по "тексту"
browser.element(name: 'btnK').hover       #- навести курсором на элемент
browser.quit