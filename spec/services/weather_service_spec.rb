# frozen_string_literal: true

module WalterWeather
  module Services
    RSpec.describe WeatherService do
      describe "#perform" do
        subject { described_class.new(city_id).perform! }

        let(:key) { "key" }
        let(:city_id) { 1 }

        before do
          WalterWeather::Config::Service.configure do |config|
            config.app_key = key
          end

          stub_weather_request(key, city_id)
        end

        it { is_expected.to be_an_instance_of(WalterWeather::Models::Weather) }
      end
    end
  end
end
