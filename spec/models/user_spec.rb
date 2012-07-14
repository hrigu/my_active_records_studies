require 'spec_helper'

describe User do
  it "has a relation to clients" do

    user_num = 10
    users = FactoryGirl.create_list(:user, user_num)
    FactoryGirl.create(:client, name: "1", users: users)

    found_user = User.find_by_email users[0].email
    found_client = found_user.clients()[0]

    found_client.users.size.should == user_num
    found_client.users.should include found_user


  end
end
