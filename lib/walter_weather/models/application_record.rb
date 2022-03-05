# frozen_string_literal: true

module WalterWeather
  module Models
    class ApplicationRecord
      def initialize(**attributes)
        attributes.each { |attr, val| instance_variable_set("@#{attr}", val) }
      end
    end
  end
end
