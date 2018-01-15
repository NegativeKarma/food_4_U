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

seed_file = Rails.root.join('db', 'seeds', 'dish_categories.yml')
config = YAML::load_file(seed_file)
Menu.all.each do |menu|
  menu.dish_categories.create!(config) do |c|
    puts "Create dish category with name: #{c.name}"
  end
end
