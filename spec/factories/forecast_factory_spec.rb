# frozen_string_literal: true

RSpec.describe WalterWeather::Factories::ForecastFactory do
  describe "#perform!" do
    let(:path) { File.join(File.dirname(__FILE__), "../support/forecast.json") }
    let(:body) { JSON.parse(File.read(path)) }

    subject(:forecasts) { described_class.new(body).perform! }

    it "must get five days" do
      expect(forecasts.size).to eq(5)
    end

    it "must fill weathers" do
      expect(forecasts.map(&:temp)).to eq([26.51, 24.25, 20.82, 17.53, 16.44])
    end
  end
end
