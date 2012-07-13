def find_or_create_color
  name = FactoryGirl.attributes_for(:color)[:name]
  Color.find_by_name(name) || FactoryGirl.create(:color)
end

FactoryGirl.define do
  factory :color do
    name 'yellow'
    rgb "FFFF00"
    sort_order 1
  end
end