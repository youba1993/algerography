# frozen_string_literal: true
require 'yaml'

require_relative "algerography/version"

module Algerography
  class Error < StandardError; end

  
 class French

    def self.all_data_cities
      states = []
      source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
      source.each do |wilaya|
        states << { code: wilaya['id'], city: wilaya['translations']['fr'] , area: wilaya['area'], districts: wilaya['districts'].map{|data| data.dig('fr') }} 
      end
      states
    end

    def self.all_cities_districts
      states = []
      source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
      source.each do |wilaya|
        states << wilaya['districts'].map{|data| data.dig('fr') }
      end
      states
    end

    def self.cities_names
      states = []
      source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
      source.each do |wilaya|
        states << wilaya['translations']['fr']
      end
      states
    end

    def self.city_by_id id 
        source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
        source.select do |wilaya|
          if  wilaya['id'] == id
            return { code: wilaya['id'], city: wilaya['translations']['fr'] , area: wilaya['area'], districts: wilaya['districts'].map{|data| data.dig('fr') }}
          end 
        end
      rescue
        raise StandardError.new('given region could not be found')
    end

 end


 class Arabic

  def self.all_data_cities
    states = []
    source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
    source.each do |wilaya|
      states << { code: wilaya['id'], city: wilaya['translations']['ar'] , area: wilaya['area'], districts: wilaya['districts'].map{|data| data.dig('ar') }} 
    end
    states
  end

  def self.cities_names
    states = []
    source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
    source.each do |wilaya|
      states << wilaya['translations']['ar']
    end
    states
  end

  def self.all_cities_districts
    states = []
    source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
    source.each do |wilaya|
      states << wilaya['districts'].map{|data| data.dig('ar') }
    end
    states
  end

  def self.city_by_id id
      source = YAML.load_file(File.join(File.dirname(__FILE__), 'algerography/wilaya_daira.yaml'))
      source.select do |wilaya|
        if  wilaya['id'] == id
          return { code: wilaya['id'], city: wilaya['translations']['ar'] , area: wilaya['area'], districts: wilaya['districts'].map{|data| data.dig('ar') }}
        end 
      end
    rescue
    raise StandardError.new('given region could not be found')
  end
 end

end
