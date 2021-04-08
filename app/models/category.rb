class Category < ApplicationRecord
  has_many :dishes

  validates :title, presence: true,
                    uniqueness: true

end
