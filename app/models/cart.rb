class Cart < ApplicationRecord
  validates :order, presence: true
  validates :price, presence: true
end
