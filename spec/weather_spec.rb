require 'spec_helper'

describe Weather do

    before(:all) do
        @random_city_service = Weather.new.random_city_service
        @city_name = @random_city_service.pass_id_to_json
        @city_name_service = Weather.new.weather_by_city_name_service
        @city_name_service.get_city_data(@city_name)
        p @city_name
    end

    it "should have a coordinates hash" do
        expect(@city_name_service.get_coordinates_class).to be_kind_of(Hash)
    end

    it "should return longitude as a float" do
        expect(@city_name_service.get_long_class).to be_kind_of(Float).or be_kind_of(Integer)
    end

    it "should return latitude as a float" do
        expect(@city_name_service.get_lat_class).to be_kind_of(Float).or be_kind_of(Integer)
    end

    it "should return 2 as the number of values for coordinates" do
        expect(@city_name_service.get_coordinates_count).to eq 2
    end

    it "should return a weather Array" do
        expect(@city_name_service.get_weather_class).to be_kind_of(Array)
    end

    it "should return a weather id as an int and 3 digits" do
        expect(@city_name_service.get_weather_id).to be_kind_of(Integer)
        expect(@city_name_service.get_weather_id_length).to be 3
    end

    it "should return main weather as a string" do
        expect(@city_name_service.get_weather_main).to be_kind_of(String)
    end 

    it "should return weather description as a string" do
        expect(@city_name_service.get_weather_description).to be_kind_of(String)
    end 

    it "should return base as a string" do
        expect(@city_name_service.get_base).to be_kind_of(String)
    end 

    it "should return main as a Hash" do
        expect(@city_name_service.get_main_class).to be_kind_of(Hash)
    end 

    it "should return main with length between 5 and 7" do
        expect(@city_name_service.get_main_count).to be_between(5,7)
    end 

    it "should return temperature as a Float" do
        expect(@city_name_service.get_temp).to be_kind_of(Float)
    end 

    it "should return pressure as an Integer or Float" do
        expect(@city_name_service.get_pressure).to be_kind_of(Float).or be_kind_of(Integer)
    end 

    it "should return humidity as an Integer" do
        expect(@city_name_service.get_humidity).to be_kind_of(Integer)
    end 

    it "should return minimum temperature as a Float" do
        expect(@city_name_service.get_min_temp).to be_kind_of(Float)
    end 

    it "should return maximum temperature as a Float" do
        expect(@city_name_service.get_max_temp).to be_kind_of(Float)
    end 

    it "should return sea level as a Float" do
        expect(@city_name_service.get_sea_level).to be(nil).or be_kind_of(Float).or be_kind_of(Integer)
    end 

    it "should return ground level as a Float" do
        expect(@city_name_service.get_ground_level).to be(nil).or be_kind_of(Float).or be_kind_of(Integer)
    end 

    it "should return visibility as an Integer" do
        expect(@city_name_service.get_visibility).to be_kind_of(Integer).or be(nil)
    end 

    it "should have wind as a Hash" do
        expect(@city_name_service.get_wind).to be_kind_of(Hash)
    end

    it "should have wind as a Hash with 2 to 3 values" do
        expect(@city_name_service.get_wind_count).to be_between(2,3)
    end

    it "should have wind speed as a Float or Integer" do
        expect(@city_name_service.get_speed).to be_kind_of(Float).or be_kind_of(Integer)
    end

    it "should have wind degree as an Integer or Float" do
        expect(@city_name_service.get_degree).to be_kind_of(Integer).or be_kind_of(Float)
    end

    it "should have clouds as a Hash" do
        expect(@city_name_service.get_clouds).to be_kind_of(Hash)
    end

    it "should have all as an Integer" do
        expect(@city_name_service.get_all).to be_kind_of(Integer)
    end

    it "should have dt as an Integer" do
        expect(@city_name_service.get_dt).to be_kind_of(Integer)
    end

    it "should have sys as a Hash" do
        expect(@city_name_service.get_sys).to be_kind_of(Hash)
    end

    it "should have return a length of 6 from the sys Hash" do
        expect(@city_name_service.get_sys_count).to be_between(1,6)
    end

    it "should have return an integer from the type key" do
        expect(@city_name_service.get_type).to be_kind_of(Integer).or be nil
    end

    it "should have return an integer from the id key" do
        expect(@city_name_service.get_sys_id).to be_kind_of(Integer).or be nil
    end

    it "should have return a Float from the message key" do
        expect(@city_name_service.get_sys_message).to be_kind_of(Float).or be nil
    end

    it "should have return a String from the country key" do
        expect(@city_name_service.get_sys_country).to be_kind_of(String)
    end

    it "should have return an Integer from the sunrise key" do
        expect(@city_name_service.get_sys_sunrise).to be_kind_of(Integer)
    end

    it "should have return an Integer from the sunset key" do
        expect(@city_name_service.get_sys_sunset).to be_kind_of(Integer)
    end

    it "should have return an Integer from the id key in main hash" do
        expect(@city_name_service.get_id).to be_kind_of(Integer)
    end

    it "should return a string for name" do
        expect(@city_name_service.get_name).to be_kind_of(String)
    end

    it "should return string which matches the random city name" do
        expect(@city_name_service.get_name).to eq @city_name
    end

    it "should return an integer which from the cod key" do
        expect(@city_name_service.get_cod).to be_kind_of(Integer)
    end

    it "should return the city codes as an Array" do
        expect(@random_city_service.load_yaml).to be_kind_of(Array)
    end

    it "should return the city list as a String" do
        expect(@random_city_service.load_json).to be_kind_of(String)
    end

    it "should return the city list as an Array" do
        expect(@random_city_service.parse_json).to be_kind_of(Array)
    end

    it "Should return an integer between 0 and 22633" do
        expect(@random_city_service.random_select).to be_kind_of(Integer)
        expect(@random_city_service.random_select).to be_between(0, 22633)
    end

    it "Should return a city name as a string" do
        expect(@random_city_service.pass_id_to_json).to be_kind_of(String)
    end

end