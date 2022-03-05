# frozen_string_literal: true

# Ruby modules
require 'json'

# Version
require_relative "walter_weather/version"

# Models
require_relative "walter_weather/models/application_record"
require_relative "walter_weather/models/weather"

# Factories
require_relative "walter_weather/factories/weather_factory"

module WalterWeather
  class Error < StandardError; end
  # Your code goes here...
end
