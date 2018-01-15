Given("the following restaurants exists") do |table|
  table.hashes.each do |hash|
    FactoryBot.create(:restaurant, hash)
  end
end

Given("I visit the {string} page") do |restaurant|
  @restaurant = Restaurant.find_by(name: restaurant)
  visit restaurant_path(@restaurant)
end

Given("the following menus exist for {string}") do |restaurant, table|
  restaurant = Restaurant.find_by(name: restaurant)
  table.hashes.each do |hash|
    hash[:restaurant] = restaurant
    FactoryBot.create(:menu, hash)
  end
end

Given("the following dish categories exist for {string}") do |menu, table|
  menu = Menu.find_by(name: menu)
  table.hashes.each do |hash|
    hash[:menu] = menu
    FactoryBot.create(:dish_category, hash)
  end
end
