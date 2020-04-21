require_relative "../lib/cat_breeds/version"
require_relative "../lib/cat_breeds/breeds"
require_relative "../lib/cat_breeds/scraper"
require_relative "../lib/cat_breeds/cli"
require 'open-uri'
require 'pry'
require 'nokogiri'

module CatBreeds 
  class Error < StandardError; end
end 

