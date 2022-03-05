# frozen_string_literal: true

require "httparty"

module WalterWeather
  module Services
    class ApplicationService
      include HTTParty

      attr_reader :city_id

      base_uri "api.openweathermap.org/data/2.5"

      def initialize(city_id)
        @city_id = city_id
      end

      def appid
        ::WalterWeather::Config::Service.instance.appid
      end

      def query
        {
          appid:,
          id: city_id,
          lang: :pt_br,
          units: :metric
        }
      end
    end
  end
end
