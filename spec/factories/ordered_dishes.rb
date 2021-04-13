FactoryBot.define do
  factory :ordered_dish do
    dish { create(:dish) }
    user { create(:order) }
  end
end
