require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do
  describe '#index' do
    let!(:collection) do
      5.times {FactoryBot.create(:restaurant)}
    end

    it 'returns a collection of restaurants' do
      get '/api/v1/restaurants'
      expect(response_json['data'].size).to eq 5
    end
  end


end