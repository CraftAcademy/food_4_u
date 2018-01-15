seed_file = Rails.root.join('db', 'seeds', 'restaurants.yml')
config = YAML::load_file(seed_file)
Restaurant.create!(config) do |c|
  puts "Create restaurant with name: #{c.name}"
end

seed_file = Rails.root.join('db', 'seeds', 'menus.yml')
config = YAML::load_file(seed_file)
Restaurant.all.each do |restaurant|
  restaurant.menus.create!(config) do |c|
    puts "Create menu with name: #{c.name}"
  end
end

seed_file = Rails.root.join('db', 'seeds', 'order.yml')
config = YAML::load_file(seed_file)
Cart.create!(config) do |c|
  puts "Create order with name: #{c.name}"
end
