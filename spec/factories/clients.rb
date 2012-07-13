FactoryGirl.define do
  factory :client do
    name "Heinz"
    hours_per_week 8
    users {[find_or_create_user]}

  end

end