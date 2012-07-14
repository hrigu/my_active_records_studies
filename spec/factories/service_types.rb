
FactoryGirl.define do
  factory :service_type do
    explanation 'default_service_type'
    color { FactoryGirl.find_or_create :color }
  end
end


