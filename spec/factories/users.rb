FactoryBot.define do
  sequence :email do |n|
    "user#{n}@bla.com"
  end

  sequence :name do |n|
    "batman#{n}"
  end

  factory :user do
    name
    email
    password { 'blablabla' }
    password_confirmation { 'blablabla' }
  end
end