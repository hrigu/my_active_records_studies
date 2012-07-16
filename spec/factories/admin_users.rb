# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_user do
    email "admin@planik.ch"
    password "secret"
    password_confirmation "secret"
    remember_me true
  end
end
