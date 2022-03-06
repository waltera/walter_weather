# frozen_string_literal: true

module WalterWeather
  module Services
    class ForecastService < ApplicationService
      def perform!
        body = self.class.get("/forecast", query:)
        WalterWeather::Factories::ForecastFactory.new(body).perform!
      end

      def query
        super.merge(cnt: 5)
      end
    end
  end
end
