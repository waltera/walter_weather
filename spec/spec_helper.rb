# frozen_string_literal: true

require "debug"

require "webmock/rspec"
require "simplecov"

WebMock.enable!
SimpleCov.start

require "walter_weather"

# Support modules
Dir["./spec/support/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  config.include StubRequestsHelper

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
