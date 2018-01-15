class Dish < ApplicationRecord
  belongs_to :dish_category
  validates :name, presence: true
  validates :price, presence: true
end
