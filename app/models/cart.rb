class Cart < ApplicationRecord
  validates :dish, presence: true
  validates :price, presence: true
end
