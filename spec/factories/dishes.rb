FactoryBot.define do
  factory :dish do
    association :dish_category
    name "MyString"
    price 1.50
  end
end
