require 'rubygems'
require 'rubocop'
require 'rspec'
require 'pry'
require 'nokogiri'
require 'open-uri' 



def dark_trader


    page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

    crypto_name = []
    page.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div").each do |name| 
		crypto_name << name.text
	end
	  

    
    crypto_price = []
    page.xpath("/html/body/div[1]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a/span").each do |price|
		crypto_price << price.text
	end
		hash_crypto = crypto_name.zip(crypto_price).map! { |k, v| { k => v}}    

puts hash_crypto

end    

dark_trader