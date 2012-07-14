require 'spec_helper'

describe User do
  it "has a relation to clients" do

    a = FactoryGirl.create(:user, email: "a")
    b = FactoryGirl.create(:user, email: "b")
    c = FactoryGirl.create(:user, email: "c")

    FactoryGirl.create(:client, name: "1", users: [a, b, c])


    found_user = User.find_by_email "a"
    found_client = found_user.clients()[0]

    found_client.users.size.should == 3
    found_client.users.should include found_user


  end
end
