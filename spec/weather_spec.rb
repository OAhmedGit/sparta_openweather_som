require 'spec_helper'

describe Weather do

    before(:all) do
        @random_city_service = Weather.new.random_city_service
        @city_name_service = Weather.new.weather_by_city_name_service
        @city_name_service.get_city_data("London")
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
    
end