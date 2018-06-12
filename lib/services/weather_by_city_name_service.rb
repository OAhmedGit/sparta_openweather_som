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

    def get_main_count
        @city_data["main"].count
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

    def get_max_temp
        @city_data["main"]["temp_max"]
    end

    def get_sea_level
        @city_data["main"]["sea_level"]
    end

    def get_ground_level
        @city_data["main"]["ground_level"]
    end

    def get_visibility
        @city_data["visibility"]
    end

    def get_wind
        @city_data["wind"]
    end

    def get_wind_count
        @city_data["wind"].count
    end

    def get_speed
        @city_data["wind"]["speed"]
    end

    def get_degree
        @city_data["wind"]["deg"]
    end

    def get_clouds
        @city_data["clouds"]
    end

    def get_all
        @city_data["clouds"]["all"]
    end

    def get_dt
        @city_data["dt"]
    end

    def get_sys
        @city_data["sys"]
    end

    def get_sys_count
        @city_data["sys"].count
    end

    def get_type
        @city_data["sys"]["type"]
    end

    def get_sys_id
        @city_data["sys"]["id"]
    end

    def get_sys_message
        @city_data["sys"]["message"]
    end

    def get_sys_country
        @city_data["sys"]["country"]
    end

    def get_sys_sunrise
        @city_data["sys"]["sunrise"]
    end

    def get_sys_sunset
        @city_data["sys"]["sunset"]
    end

    def get_id
        @city_data["id"]
    end

    def check_id
        @city_data["id"]
    end

    def get_name
        @city_data["name"]
    end

    def get_cod
        @city_data["cod"]
    end
end