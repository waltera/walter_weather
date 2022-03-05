# frozen_string_literal: true

module WalterWeather
  module Services
    class WeatherService < ApplicationService
      def perform!
        body = self.class.get("/weather", query:)
        WalterWeather::Factories::WeatherFactory.new(body).perform!
      end
    end
  end
end
