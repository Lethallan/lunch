class User < ApplicationRecord
  before_save :before_save_check_if_table_is_empty
  
  has_many :orders

  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEXP }
  validates :name, presence: true

  def before_save_check_if_table_is_empty
    # if User.all.empty?
    #   @current_usrt.type = 'Admin'
    # end
  end

end
