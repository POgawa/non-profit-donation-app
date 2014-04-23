# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name { Faker::Company.name }
    description { Faker::Lorem.sentence}
    phone { Faker::PhoneNumber.phone_number }
    city { Faker::Address.city }
  end
end
