class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  before_save :check_if_table_is_empty

  has_many :orders

  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEXP }
  validates :name, presence: true

  def check_if_table_is_empty
    # if User.all.empty?
    #   @current_user.type = 'Admin'
    # end
  end
end
