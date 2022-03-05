# frozen_string_literal: true

RSpec.describe WalterWeather::Services::ForecastService do
  describe "#perform" do
    let(:key) { "key" }
    let(:city_id) { 1 }

    before do
      WalterWeather::Config::Service.configure do |config|
        config.app_key = key
      end

      stub_forecast_request(key, city_id)
    end

    subject(:forecasts) { described_class.new(city_id).perform! }

    it { expect(forecasts.size).to eq(5) }
  end
end
