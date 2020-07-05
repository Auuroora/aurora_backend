FactoryGirl.define do
  factory :user do
    username { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'password' }
  end

  factory :admin_user do
    email { 'admin@admin' }
    password { '123qwe' }
  end
end
