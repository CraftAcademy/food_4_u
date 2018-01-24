class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :street_address, :post_code, :city
end
