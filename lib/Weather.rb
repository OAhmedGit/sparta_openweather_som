require_relative 'services/weather_by_city_name_service'
require_relative 'services/random_city_service'

class Weather
    def weather_by_city_name_service
        WeatherByCityNameService.new
    end

    def random_city_service
        RandomCityService.new
    end
end