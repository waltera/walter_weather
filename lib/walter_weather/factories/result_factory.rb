# frozen_string_literal: true

module WalterWeather
  module Factories
    class ResultFactory
      attr_reader :city_id

      def initialize(city_id)
        @city_id = city_id
      end

      def perform!
        WalterWeather::Models::Result.new(
          weather: WalterWeather::Services::WeatherService.new(city_id).perform!,
          forecasts: WalterWeather::Services::ForecastService.new(city_id).perform!
        )
      end
    end
  end
end
