class Dish < ApplicationRecord
  belongs_to :category
  has_many :orders, through: :ordered_dishes
  has_many :ordered_dishes

  mount_uploader :picture, DishPicturesUploader

  validates :title, presence: true,
                    uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
