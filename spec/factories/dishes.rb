FactoryBot.define do
  factory :dish do
    title { "MyString" }
    description { "MyText" }
    price { 1 }
    category_id { nil }
  end
end
