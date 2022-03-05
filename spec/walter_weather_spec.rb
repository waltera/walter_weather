# frozen_string_literal: true

RSpec.describe WalterWeather do
  it "has a version number" do
    expect(WalterWeather::VERSION).not_to be nil
  end

  describe "#weather_from_city" do
    let(:key) { "key" }
    let(:city_id) { 1 }

    before do
      WalterWeather::Config::Service.configure do |config|
        config.app_key = key
      end

      stub_weather_request(key, city_id)
      stub_forecast_request(key, city_id)
    end

    subject(:result) { WalterWeather.weather_from_city(city_id) }

    it "must fill result weather" do
      expect(result.weather.description).to eq("chuva leve")
    end

    it "must fill result forecasts" do
      expect(result.forecasts.map(&:temp)).to eq([26.51, 24.25, 20.82, 17.53, 16.44])
    end
  end
end
