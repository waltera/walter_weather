# frozen_string_literal: true

RSpec.describe WalterWeather::Services::WeatherService do
  describe "#perform" do
    let(:key) { "key" }
    let(:city_id) { 1 }

    let!(:factory_dbl) { double("Teste") }

    before do
      WalterWeather::Config::Service.configure do |config|
        config.app_key = key
      end

      stub_weather_request(key, city_id)
    end

    subject { described_class.new(city_id).perform! }

    it { is_expected.to be_an_instance_of(WalterWeather::Models::Weather) }
  end
end
