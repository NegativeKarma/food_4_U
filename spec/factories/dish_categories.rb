FactoryBot.define do
  factory :dish_category do
    association :menu
    name "MyString"
  end
end
