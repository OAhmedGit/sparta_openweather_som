require 'yaml'
require 'json'

class RandomCityService

    def load_yaml
        @city_code_array = YAML.load_file('city_id.yml')
    end

    def load_json
        @city_list = File.read('city.list.json')
    end

    def parse_json
        @city_hash = JSON.parse(@city_list)
    end

    def random_select
        @random_id = rand(0..@city_code_array.length-1)
    end

    def find_city_with_id (id)
        @city_hash.each do |city|
            if city["id"] == @city_code_array[id]
                return city["name"]
            end
        end
    end

    def pass_id_to_json
        find_city_with_id(@random_id).class
    end
end

# w = RandomCityService.new
# w.load_yaml
# w.load_json
# w.parse_json
# w.random_select
# w.pass_id_to_json




