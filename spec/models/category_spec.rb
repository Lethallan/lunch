require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'associations' do
    it {should have_many :dishes}
  end

  context 'validations' do
    it { should validate_presence_of :title }
  end
end
