require 'spec_helper'

describe Weather do

    before(:all) do
        @random_city_service = Weather.new.random_city_service
        p @random_city_service.pass_id_to_json
        @city_name_service = Weather.new.weather_by_city_name_service
        @city_name_service.get_city_data(@random_city_service.pass_id_to_json)
    end

    it "should have a coordinates hash" do
        expect(@city_name_service.get_coordinates_class).to be Hash
    end

    it "should return longitude as a float" do
        expect(@city_name_service.get_long_class).to be Float
    end

    it "should return latitude as a float" do
        expect(@city_name_service.get_lat_class).to be Float
    end

    it "should return 2 as the number of values for coordinates" do
        expect(@city_name_service.get_coordinates_count).to eq 2
    end

    it "should return a weather Array" do
        expect(@city_name_service.get_weather_class).to be Array
    end

    it "should return a weather id as an int and 3 digits" do
        expect(@city_name_service.get_weather_id).to be_kind_of(Integer)
        expect(@city_name_service.get_weather_id_length).to be 3
    end

    it "should return main weather as a string" do
        expect(@city_name_service.get_weather_main).to be String
    end 

    it "should return weather description as a string" do
        expect(@city_name_service.get_weather_description).to be String
    end 

    it "should return base as a string" do
        expect(@city_name_service.get_base).to be_kind_of(String)
    end 

    it "should return main as a Hash" do
        expect(@city_name_service.get_main_class).to be Hash
    end 

    it "should return temperature as a Float" do
        expect(@city_name_service.get_temp).to be_kind_of(Float)
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