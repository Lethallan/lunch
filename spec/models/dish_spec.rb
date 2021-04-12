require 'rails_helper'

RSpec.describe Dish, type: :model do
  context 'associations' do
    it { should belong_to :category }
    it { should have_many :ordered_dishes }
    it { should have_many(:orders).through(:ordered_dishes) }
  end

  context 'validations' do
    it { should validate_presence_of :title }
    it { should validate_numericality_of :price }
  end
end
