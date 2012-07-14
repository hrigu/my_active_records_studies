require 'spec_helper'

describe User do
  it "has a relation to clients" do

    users = FactoryGirl.create_list(:user, 3)
    FactoryGirl.create(:client, name: "1", users: users)


    found_user = User.find_by_email users[0].email
    found_client = found_user.clients()[0]

    found_client.users.size.should == 3
    found_client.users.should include found_user


  end
end
