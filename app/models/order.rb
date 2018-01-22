class Order < ApplicationRecord
  acts_as_shopping_cart_using :order_item

  def order_items
    shopping_cart_items
  end

  state_machine :state, initial: :pending do
    event :payment_cleared do
      transition pending: :finalized
    end

    event :payment_declined do
      transition pending: :rejected
    end
  end
end
