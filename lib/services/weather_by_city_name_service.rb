require 'httparty'
require 'json'

class WeatherByCityNameService
    include HTTParty

    base_uri 'https://api.openweathermap.org/data/2.5/weather?APPID=51fa4603b111997d6b44ac69eb6123dc'

    def get_city_data(city_name)
        @city_data = JSON.parse(self.class.get(URI.encode("&q=#{city_name}")).body)
    end

    def get_coordinates_class
        @city_data["coord"]
    end

    def get_coordinates_count
        @city_data["coord"].count
    end

    def get_long_class
        @city_data["coord"]["lon"]
    end

    def get_lat_class
        @city_data["coord"]["lat"]
    end

    def get_weather_class
        @city_data["weather"]
    end

    def get_weather_id
        @city_data["weather"][0]["id"]
    end

    def get_weather_id_length
        @city_data["weather"][0]["id"].to_s.length
    end
    
    def get_weather_main
        @city_data["weather"][0]["main"]
    end

    def get_weather_description
        @city_data["weather"][0]["description"]
    end

    def get_base
        @city_data["base"]
    end

    def get_main_class
        @city_data["main"]
    end

    def get_temp
        @city_data["main"]["temp"]
    end

    def get_pressure
        @city_data["main"]["pressure"]
    end

    def get_humidity
        @city_data["main"]["humidity"]
    end

    def get_min_temp
        @city_data["main"]["temp_min"]
    end
end

# w = WeatherByCityNameService.new
# w.get_city_data('London')