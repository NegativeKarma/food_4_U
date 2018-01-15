class DishCategory < ApplicationRecord
  belongs_to :menu
  has_many :dishes
  validates :name, presence: true
end
