class Order < ApplicationRecord
  belongs_to :user
  has_many :dishes, through: :ordered_dishes
end
