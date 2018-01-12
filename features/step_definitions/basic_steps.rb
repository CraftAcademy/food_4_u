Then("I should see {string}") do |content|
  expect(page).to have_content content
end

When("I click {string}") do |element|
  click_link_or_button element
end

Then("I should be redirected to the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

def page_path_from(page_name)
  case page_name.downcase
    when 'thaitanic' then restaurant_path(Restaurant.find_by(name: page_name))
  end
end