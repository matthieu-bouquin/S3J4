require 'rubygems'
require 'rubocop'
require 'rspec'
require 'pry'
require 'nokogiri'
require 'open-uri' 



def deputy
    page = Nokogiri::HTML(URI.open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
    list = page.xpath('//*[@id="deputes-list"]//li/a/text()')
    deputy_name = list.map { |deputy_info| deputy_info.to_s.split.drop(1) }
    contact = deputy_name.map { |first_name, last_name|
        email = first_name + '.' + last_name + '@assemblee-nationale.fr'
        Hash[first_name: first_name, last_name: last_name, email: email]
    }
end

puts deputy

   









