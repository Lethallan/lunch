FactoryBot.define do
  factory :order do
    user { create(:user) }
    dishes { create_list(:dish, 3) }
    total_price { dishes.inject(0) { |sum, dish| sum + dish.price } }
  end
end
