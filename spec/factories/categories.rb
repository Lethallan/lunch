FactoryBot.define do
  factory :category do
    title { "Category title" }

    trait :wrong do
      title { nil }
    end
  end
end
