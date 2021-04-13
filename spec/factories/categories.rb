FactoryBot.define do
  sequence :title do |n|
    "Category#{n}"
  end

  factory :category do
    title

    trait :wrong do
      title { nil }
    end
  end
end
