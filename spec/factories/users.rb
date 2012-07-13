def find_or_create_user
  email = FactoryGirl.attributes_for(:user)[:email]
  User.find_by_email(email) || FactoryGirl.create(:user)
end

FactoryGirl.define do
  factory :user do
    email "a"
    is_internal_super_user false
    password "password"
    salt "salt"
  end

  factory :super_user, class: User do
    email "b"
    is_internal_super_user true
    password "password"
    salt "salt"
  end

end