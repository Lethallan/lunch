FactoryBot.define do
  factory :dish do
    title { "Sweetroll"}
    description { "very sweet roll" }
    price { 100 }
    category { create(:category) }

    trait :wrong do
      title { nil }
      category { nil }
      price { nil }
    end
  end
end
