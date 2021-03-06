require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it {should have_many :orders}
  end

  context 'validations' do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password}
    it { should validate_presence_of :name}
  end
end