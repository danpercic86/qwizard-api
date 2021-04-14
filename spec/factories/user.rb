FactoryBot.define do
  factory :user do
    username { Faker::Name.first_name }
    email { Faker::Educator.subject }
    password { Faker::Educator.subject }
    hat { User.hats.values.sample }
  end
end