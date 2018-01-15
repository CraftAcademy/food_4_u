class Cart < ApplicationRecord
  validates :order, presence: true
end
