require 'spec_helper'


describe ServiceType do


  before do
    @service_type = FactoryGirl.create :service_type
  end

  it "should know its color" do
    service_types = ServiceType.find_all_by_explanation(FactoryGirl.attributes_for(:service_type)[:explanation])
    service_types.size.should == 1
    service_type = service_types[0]
    service_type.color.name.should == FactoryGirl.attributes_for(:color)[:name]
  end

  it "should NOT delete its color when destroyed" do
    ServiceType.all.size.should == 1
    @service_type.destroy
    ServiceType.all.size.should == 0
    Color.all.size.should == 1

  end



end
