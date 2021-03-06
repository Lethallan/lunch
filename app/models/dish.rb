class Dish < ApplicationRecord
  belongs_to :category
  has_many :ordered_dishes
  has_many :orders, through: :ordered_dishes

  scope :by_category, -> (category_id) { where(category_id: category_id) }

  mount_uploader :picture, DishPicturesUploader

  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
