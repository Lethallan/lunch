FactoryBot.define do
  factory :dish do
    title { "MyString" }
    description { "MyText" }
    price { 10 }
    category { create(:category) }

    trait :wrong do
      title { nil }
      category { nil }
      price { nil }
    end
  end
end
