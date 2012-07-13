# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :service do
    date_time_from "2012-07-13 08:00"
    date_tyime_to "2012-07-13 12:00"
    error_text "error_text"
    service_type { ServiceType.first || Factory(:service_type) }
    #staff
  end
end
