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

      def self.configure(&block)
        config = ::WalterWeather::Models::Configuration.new
        block.call(config)
        @@instance = new(config)
      end

      private_class_method :new
    end
  end
end
