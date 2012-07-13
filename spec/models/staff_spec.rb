require 'spec_helper'

describe Staff do
  it "belongs to a client" do
    staff = FactoryGirl.create :staff

    staff = Staff.first
    client = Client.first

    staff.first_name.should(match(FactoryGirl.attributes_for(:staff)[:first_name]))
    staff.client.should == client

    client.staffs.should include staff



  end
end
