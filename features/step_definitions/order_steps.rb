And(/^I click on "([^"]*)" for "([^"]*)"$/) do |button, product_name|
  product = Product.find_by(name: product_name)
  within "#product-#{product.id}" do
    click_link_or_button button
  end
end

Then("I should be on the restaurant {string} page") do |restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)
  expect(current_path).to eq restaurant_path(restaurant)
end

And(/^An order should have been created in the database$/) do
  @order = Order.last
  expect(@order).not_to be nil
end

And(/^"([^"]*)" should be an order item$/) do |product_name|
  #product = Product.find_by(name: product_name)
  items_collection = @order.order_items.map{ |product| product.item.name }
  #item = @order.order_items.first.item
  expect(items_collection).to include product_name
end