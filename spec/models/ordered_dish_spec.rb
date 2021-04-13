require 'rails_helper'

RSpec.describe OrderedDish, type: :model do
  context 'associations' do
    it { should belong_to :dish}
    it { should belong_to :order }
  end
end
