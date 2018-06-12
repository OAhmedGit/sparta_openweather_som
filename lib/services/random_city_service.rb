require 'yaml'
require 'json'

class RandomCityService
    def initialize
        @city_code_array = YAML.load_file('../../city_id.yml')
        @city_list = File.read('../../city.list.json')
        @city_hash = JSON.parse(@city_list)
    end

    def random_select
        @random_id = rand(0..@city_code_array.length-1)
    end

    def find_city_with_id (id)
        @city_hash.each do |city|
            if city["id"] == id
                p city["name"]
                return city["name"]
            end
        end
    end
end

w = RandomCityService.new



