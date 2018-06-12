require 'httparty'
require 'json'

class WeatherByCityNameService
    include HTTParty

    base_uri 'https://api.openweathermap.org/data/2.5/weather?APPID=51fa4603b111997d6b44ac69eb6123dc'

    def get_city_data city_name
        @city_data = JSON.parse(self.class.get("&q=#{city_name}").body)
    end

    def get_coordinates_class
        @city_data["coord"].class
    end
end

# w = WeatherByCityNameService.new
# w.get_city_data('London')