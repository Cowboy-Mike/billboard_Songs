#!/usr/bin/env ruby

require "nokogiri"
require "pry"
require "open-uri"
require_relative "./songs.rb"

class Scraper
    def get_page
        page = Nokogiri::HTML(open("https://www.billboard.com/charts/hot-100"))
        page.css(".chart-element__information__song").each do |x|
            song = Song.new
            song.artist = page.css(".chart-element__information__artist").text
            song.last_week = page.css(".chart-element__meta.text--last").text
            song.peak = page.css(".chart-element__meta.text--peak").text
            song.weeks_on_chart = page.css(".chart-element__meta.text--week").text 
        end
    end
    
   # def get_songs
   #     self.get_page.css(".chart-element__information__song").text
  #  end
#
   # def make_songs
   #     self.get_songs.each do |title|
  #          song = Song.new
  #          song.artist = page.css(".chart-element__information__artist").text
   #         song.last_week = page.css(".chart-element__meta.text--last").text
   #         song.peak = page.css(".chart-element__meta.text--peak").text
  #     end
   # end
    #
    #
    #
    #page.css(".chart-element__meta.text--peak").first.text
    #page.css(".chart-element__meta.text--week").first.text
end


Scraper.new.get_page
