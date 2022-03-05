# frozen_string_literal: true

module WalterWeather
  module Models
    class Result < ApplicationRecord
      attr_reader :weather, :forecasts
    end
  end
end
