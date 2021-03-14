# frozen_string_literal: true

require_relative "version"
require_relative "cli"
require_relative "songs"
require_relative "scraper"
require "nokogiri"
require "open-uri"
require "pry"

module BillboardSongs
  class Error < StandardError; end
  # Your code goes here...
end
