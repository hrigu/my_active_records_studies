
FactoryGirl.define do
  factory :user do
    email "a@planik.ch"
    is_internal_super_user false
    password "password"
    salt "salt"
  end

  factory :super_user, class: User do
    email "b@planik.ch"
    is_internal_super_user true
    password "password"
    salt "salt"
  end

end