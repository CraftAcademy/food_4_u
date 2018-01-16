class OrdersController < ApplicationController
  def create
    product = Product.find(params[:product])
    order = Order.create
    order.add(product, product.price)
    binding.pry
    if order.persisted?
      redirect_back(fallback_location: root_path, notice: "#{product.name} has been added to your order")
    end
  end
end
