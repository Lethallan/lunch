FactoryBot.define do
  factory :order do
    user { nil }
    total_price { 1 }
  end
end
