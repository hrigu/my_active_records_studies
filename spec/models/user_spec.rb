require 'spec_helper'

describe User do
  it "has a relation to clients" do
    users = User.create [{email: "a"},{email: "b"}, {email: "c"}]
    clients = Client.create [{name: "1"}, {name: "2"}, {name: "3"}]

    a = User.find_by_email "a"
    client = Client.find_by_name "1"
    a.clients << client

    a.save

    a = User.find_by_email "a"
    a.clients[0].should == client
    client.users[0].should == a

  end
end
