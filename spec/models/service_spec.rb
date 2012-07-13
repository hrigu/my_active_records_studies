require 'spec_helper'

ActiveRecord::Base.logger = Logger.new(STDOUT)
describe Service do
  before() do
    @service = FactoryGirl.create :service
  end
  it "should know the servictype and the color of the service type" do
    @service.service_type.should == ServiceType.find_by_explanation(FactoryGirl.attributes_for(:service_type)[:explanation])
    @service.service_type.color.name == ServiceType.find_by_explanation(FactoryGirl.attributes_for(:color)[:color])
  end
end
