#!/usr/bin/env ruby

class BillboardSongs::Scraper
    
    def self.get_page
        Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100"))
    end
    

end




