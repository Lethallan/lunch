class Order < ApplicationRecord
  belongs_to :user
  has_many :dishes, through: :ordered_dishes
  has_many :ordered_dishes
end
