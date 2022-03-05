# frozen_string_literal: true

module WalterWeather
  module Factories
    class ForecastFactory
      attr_reader :body, :forecasts

      def initialize(body)
        @body = body
      end

      def perform!
        @forecasts = body["list"].map do |list_body|
          WeatherFactory.new(list_body).perform!
        end
      end
    end
  end
end
