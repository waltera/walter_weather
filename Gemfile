# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in walter_weather.gemspec
gemspec

gem "rake", "~> 13.0"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]

  gem "rspec"
  gem "simplecov", require: false
  gem "webmock"

  # Code Quality
  gem "relaxed-rubocop"
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rspec", require: false
end
