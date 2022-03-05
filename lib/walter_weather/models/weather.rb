# frozen_string_literal: true

module WalterWeather
  module Models
    class Weather < ApplicationRecord
      attr_accessor :temp, :description, :city_name, :date
    end
  end
end
