require 'open-uri'
require 'nokogiri'


def dark_trader
  page = Nokogiri::HTML(open("https://coinmarketcap.com/fr/all/views/all/"))

  names = page.css("td.cmc-table__cell--sort-by__name").css("a").map(&:text)
  prices = page.css("td.cmc-table__cell--sort-by__price").css("a").map(&:text)

  return [] if names.length != prices.length
  names.each_with_index.map{|n, i| {n => prices[i]}}
end

puts dark_trader
