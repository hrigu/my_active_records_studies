FactoryGirl.define do
  factory :client do
    name "Heinz"
    hours_per_week 8
    users {[FactoryGirl.find_or_create(:user)]}

  end

end