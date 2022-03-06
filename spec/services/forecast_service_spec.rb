# frozen_string_literal: true

module WalterWeather
  module Services
    RSpec.describe ForecastService do
      describe "#perform" do
        subject(:forecasts) { described_class.new(city_id).perform! }

        let(:key) { "key" }
        let(:city_id) { 1 }

        before do
          WalterWeather::Config::Service.configure do |config|
            config.app_key = key
          end

          stub_forecast_request(key, city_id)
        end

        it { expect(forecasts.size).to eq(5) }
      end
    end
  end
end
