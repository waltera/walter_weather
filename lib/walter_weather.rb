# frozen_string_literal: true

# Ruby modules
require "json"

# Version
require_relative "walter_weather/version"

# Models
require_relative "walter_weather/models/application_record"
require_relative "walter_weather/models/weather"
require_relative "walter_weather/models/configuration"

# Factories
require_relative "walter_weather/factories/weather_factory"
require_relative "walter_weather/factories/forecast_factory"

# Config
require_relative "walter_weather/config/service"

# Services
require_relative "walter_weather/services/application_service"
require_relative "walter_weather/services/weather_service"

module WalterWeather
  class Error < StandardError; end
  # Your code goes here...
end
