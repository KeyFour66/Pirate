require 'open-uri'
require 'nokogiri'

def get_deputehall_urls(url)
  page = Nokogiri::HTML(open(url))
  page.css('div.col-container//a').map{|e| [e.text, url[0..-28] + e["href"]]}
end

def get_deputehall_email(url)
  page = Nokogiri::HTML(open(url))
  begin
    page.css("dl.deputes-liste-attributs//a")[2].text
  rescue => e
    nil
  end
end

def cher_depute
  url = "http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"

  get_deputehall_urls(url).map do |n, u|
    mail = get_deputehall_email(u)
    spl = n.split
    {:first_name => spl[1], :lats_name => spl[2..-1].join(" "), :email => mail}
  end
end

puts cher_depute
