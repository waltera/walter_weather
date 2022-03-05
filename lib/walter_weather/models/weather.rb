module WalterWeather::Models
  class Weather < ApplicationRecord

    attr_accessor :temp, :description, :city_name, :date
  end
end