# frozen_string_literal: true

module WalterWeather
  module Services
    class ForecastService < ApplicationService
      def perform!
        body = self.class.get("/forecast", query:)
        WalterWeather::Factories::ForecastFactory.new(body).perform!
      end
    end
  end
end
