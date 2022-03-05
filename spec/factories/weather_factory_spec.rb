# frozen_string_literal: true

RSpec.describe WalterWeather::Factories::WeatherFactory do
  describe "#perform!" do
    let(:path) { File.join(File.dirname(__FILE__), "../support/weather.json") }
    let(:body) { JSON.parse(File.read(path)) }

    subject(:weather) { described_class.new(body).perform! }

    it "must fill temp" do
      expect(weather.temp).to eq(20.51)
    end

    it "must fill description" do
      expect(weather.description).to eq("chuva leve")
    end

    it "must fill city name" do
      expect(weather.city_name).to eq("Brasília")
    end

    it "must fill date" do
      expect(weather.date).to_not be_nil
      expect(weather.date.day).to eq(4)
      expect(weather.date.month).to eq(3)
      expect(weather.date.year).to eq(2022)
    end
  end
end
