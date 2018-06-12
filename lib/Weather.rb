require_relative 'services/weather_by_city_name_service'

class Weather
    def weather_by_city_name_service
        WeatherByCityNameService.new
    end
end