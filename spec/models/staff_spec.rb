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

  it "should delete its services as well when staff is deleted" do
    #ActiveRecord::Base.logger = Logger.new(STDOUT)
    staff = FactoryGirl.create :staff
    service = FactoryGirl.create :service, staff: staff
    service = FactoryGirl.create :service, staff: staff

    found_staff = Staff.where(:abbreviation => staff.abbreviation).first

    found_staff.abbreviation.should match staff.abbreviation

    Staff.all.size.should == 1
    Staff.all[0].should == found_staff

    Service.all.size.should == 2

    found_staff.destroy
    Staff.all.size.should == 0
    Service.all.size.should == 0

  end
end
