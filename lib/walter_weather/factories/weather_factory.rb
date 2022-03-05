# frozen_string_literal: true

module WalterWeather
  module Factories
    class WeatherFactory
      attr_reader :body, :weather

      def initialize(body)
        @body = body
      end

      def perform!
        @weather = ::WalterWeather::Models::Weather.new(temp:, description:, city_name:, date:)
      end

      private

      def temp
        body.fetch("main", {}).fetch("temp", nil)
      end

      def description
        data = body.fetch("weather", []).first || {}
        data["description"]
      end

      def city_name
        body["name"]
      end

      def date
        Time.at(body["dt"])
      end
    end
  end
end
