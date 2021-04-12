FactoryBot.define do
  factory :order do
    user { create(:user) }
    total_price { order.dishes.inject(0) { |sum, dish| sum + dish.price } }
  end
end
