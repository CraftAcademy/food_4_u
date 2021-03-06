require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do
  before do
    3.times {FactoryBot.create( :restaurant )}
    3.times {FactoryBot.create( :menu, restaurant: Restaurant.first )}
    3.times {FactoryBot.create( :product_category, menu: Menu.first )}
    3.times {FactoryBot.create( :product, product_category: ProductCategory.first )}
  end

  describe 'GET /v1/restaurants' do
    it 'should return a restaurant' do
      get '/api/v1/restaurants'
      expect(response.status).to eq 200
      expected_response = eval(file_fixture('restaurants.txt').read)
      expect(response_json).to eq expected_response.as_json
    end
  end

  describe 'GET /v1/restaurant/restaurant_id' do
    it 'should return the children objects for a restaurant' do
      get "/api/v1/restaurants/#{Restaurant.first.id}"
      expect(response.status).to eq 200
      expected_response = eval(file_fixture('products.txt').read)
      expect(response_json).to eq expected_response.as_json
    end
  end
end
