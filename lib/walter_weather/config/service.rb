# frozen_string_literal: true

module WalterWeather
  module Config
    class Service
      attr_reader :appid

      def initialize(config)
        @appid = config.app_key
      end

      def self.instance
        @@instance
      end

      def self.configure
        config = WalterWeather::Models::Configuration.new
        yield config if block_given?
        @@instance = new(config)
      end

      private_class_method :new
    end
  end
end
