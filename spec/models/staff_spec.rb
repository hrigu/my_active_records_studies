require 'spec_helper'

describe Staff do
  it "belongs to a client" do
    staff = FactoryGirl.create :staff
    client = FactoryGirl.create :client

    staff.client = client
    staff.save

    staff = Staff.all[0]

    staff.first_name.should(match(FactoryGirl.attributes_for(:staff)[:first_name]))
    staff.client.should == client

    client.staffs.should include staff



  end
end
