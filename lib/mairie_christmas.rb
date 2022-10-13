require 'rubygems'
require 'rubocop'
require 'rspec'
require 'pry'
require 'nokogiri'
require 'open-uri' 


def mairie

townhall=[]
page = Nokogiri::HTML(URI.open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
page.xpath('//p/a').each do |name|
  	townhall << name.text
end


email = []
page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/"))
all_links = page.css("a") 
all_links.each do |link| 
    page_annuaire = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/#{link['href']}")) 
    page_annuaire.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |mail| 
    email << mail.text
  end
 end
hash = townhall.zip(email).map! { |k, v| { k => v}}  

puts hash

end
  
mairie