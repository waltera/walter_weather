# frozen_string_literal: true

# Ruby modules
require "json"

# Version
require_relative "walter_weather/version"

# Models
require_relative "walter_weather/models/application_record"
require_relative "walter_weather/models/weather"
require_relative "walter_weather/models/configuration"
require_relative "walter_weather/models/result"

# Factories
require_relative "walter_weather/factories/weather_factory"
require_relative "walter_weather/factories/forecast_factory"
require_relative "walter_weather/factories/result_factory"

# Config
require_relative "walter_weather/config/service"

# Services
require_relative "walter_weather/services/application_service"
require_relative "walter_weather/services/weather_service"
require_relative "walter_weather/services/forecast_service"

module WalterWeather
  def self.weather_from_city(city_id)
    Factories::ResultFactory.new(city_id).perform!
  end
end
