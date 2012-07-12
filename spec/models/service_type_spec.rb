require 'spec_helper'


yellow_color =  {name: 'yellow', rgb: "FFFF00", sort_order: 1}
default_service_type = {explanation: "default_service_type"}

describe ServiceType do


  before do
    @color = Color.create(yellow_color)
    default_service_type[:color] = @color
    @service_type = ServiceType.create(default_service_type)
  end

  it "should know its color" do
    service_types = ServiceType.find_all_by_explanation(default_service_type[:explanation])
    service_types.size.should == 1
    service_type = service_types[0]
    service_type.color.name.should == yellow_color[:name]
  end

  it "should NOT delete its color when destroyed" do
    ServiceType.all.size.should == 1
    @service_type.destroy
    ServiceType.all.size.should == 0
    Color.all.size.should == 1

  end



end
