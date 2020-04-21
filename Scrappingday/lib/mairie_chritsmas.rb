require 'open-uri'
require 'nokogiri'

def get_townhall_email(url)
  page = Nokogiri::HTML(open(url))
  page.css("tbody//tr.tr-last")[3].css("td")[1].text
end

def get_townhall_urls(url)
  page = Nokogiri::HTML(open(url))
  page.css('//table.Style20//a').map{|e| [e.text, url[0..-16] + e["href"]]}
end

def mairie_christmas
  url = "http://annuaire-des-mairies.com/val-d-oise.html"
  get_townhall_urls(url).map!{|n, u| {n => get_townhall_email(u)}}
end

puts mairie_christmas
