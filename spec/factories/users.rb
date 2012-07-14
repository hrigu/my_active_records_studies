
FactoryGirl.define do

  sequence :email do |n|
    "person#{n}@planik.ch"
  end

  factory :user do
    email
    is_internal_super_user false
    password "password"
    salt "salt"
  end

  factory :super_user, class: User do
    email
    is_internal_super_user true
    password "password"
    salt "salt"
  end

end