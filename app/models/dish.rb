class Dish < ApplicationRecord
  belongs_to :category

  validates :title, presence: true,
                    uniqueness: true
  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
