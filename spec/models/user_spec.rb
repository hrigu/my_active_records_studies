require 'spec_helper'

describe User do
  it "has a relation to clients" do

    a = FactoryGirl.create(:user, email: "a")
    b = FactoryGirl.create(:user, email: "b")
    c = FactoryGirl.create(:user, email: "c")

    one = FactoryGirl.create(:client, name: "1")
    two = FactoryGirl.create(:client, name: "2")
    three = FactoryGirl.create(:client, name: "3")


    a = User.find_by_email "a"
    client = Client.find_by_name "1"
    a.clients << client

    a.save

    a = User.find_by_email "a"
    a.clients[0].should == client
    client.users[0].should == a

  end
end
