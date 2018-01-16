And(/^I click on "([^"]*)" for "([^"]*)"$/) do |button, product_name|
  product = Product.find_by(name: product_name)
  within "#product-#{product.id}" do
    click_link_or_button button
  end
end