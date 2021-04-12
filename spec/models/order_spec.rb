require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'associations' do
    it { should belong_to :user }
    it { should have_many :ordered_dishes }
    it { should have_many(:dishes).through(:ordered_dishes) }
  end
end
