# frozen_string_literal: true

module StubRequestsHelper
  def stub_weather_request(app_key, city_id)
    url = "http://api.openweathermap.org/data/2.5/weather?appid=#{app_key}&id=#{city_id}&lang=pt_br&units=metric"
    headers = {
      "Accept" => "*/*",
      "Accept-Encoding" => "gzip;q=1.0,deflate;q=0.6,identity;q=0.3",
      "User-Agent" => "Ruby"
    }

    path = File.join(File.dirname(__FILE__), "../support/weather.json")
    body = File.read(path)

    stub_request(:get, url)
      .with(headers:)
      .to_return(status: 200, body:, headers: { "Content-Type" => "application/json" })
  end

  def stub_forecast_request(app_key, city_id)
    url = "http://api.openweathermap.org/data/2.5/forecast?appid=#{app_key}&id=#{city_id}&lang=pt_br&units=metric&cnt=5"
    headers = {
      "Accept" => "*/*",
      "Accept-Encoding" => "gzip;q=1.0,deflate;q=0.6,identity;q=0.3",
      "User-Agent" => "Ruby"
    }

    path = File.join(File.dirname(__FILE__), "../support/forecast.json")
    body = File.read(path)

    stub_request(:get, url)
      .with(headers:)
      .to_return(status: 200, body:, headers: { "Content-Type" => "application/json" })
  end
end
