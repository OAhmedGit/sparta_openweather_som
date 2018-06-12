require 'spec_helper'

describe Weather do

    before(:all) do
        @city_name_service = Weather.new.weather_by_city_name_service
        @city_name_service.get_city_data("London")
    end

    it "should have a coordinates hash" do
        expect(@city_name_service.get_coordinates_class).to eq Hash
    end
    
end