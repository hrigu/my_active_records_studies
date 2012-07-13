
FactoryGirl.define do
  factory :service_type do
    explanation 'default_service_type'
    color { find_or_create_color }
  end
end


