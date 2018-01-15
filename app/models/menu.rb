class Menu < ApplicationRecord
  has_many :dish_categories
  belongs_to :restaurant
  validates :name, presence: true
end
