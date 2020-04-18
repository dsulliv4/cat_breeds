require_relative "./pump_selection/version"
require_relative "./pump_selection/breeds"
require_relative "./pump_selection/scraper"
require_relative "./pump_selection/cli"
require 'open-uri'
require 'pry'
require 'nokogiri'

module CatBreeds
  class Error < StandardError; end
  # Your code goes here...
end
