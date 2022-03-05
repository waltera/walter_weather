# WalterWeather

`walter_wather` is a Ruby wrapper for [OpenWeather's API](https://openweathermap.org/api).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'walter_weather'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install walter_weather

Configure [API Token](https://home.openweathermap.org/api_keys) on `config/initializers/walter_weather.rb`:

    WalterWeather::Config::Service.configure do |config|
        config.app_key = "YOUR_API_TOKEN_HERE"
    end

## Usage

    WalterWeather.weather_from_city(city_id)
Get `city_id` from [Geocoding API](https://openweathermap.org/api/geocoding-api) manually.

## Development

First clone repo.

### Without Docker

Install gem dependencies:

    $ bundle install

Run tests:

    $ rake

### With Docker

Install gem dependencies:

    $ docker-compose run app bundle install

Run tests:

    $ docker-compose run app rake

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/walter_weather.
