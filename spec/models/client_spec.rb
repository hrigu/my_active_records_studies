require 'spec_helper'

describe Client do

  it "knows its users" do
    client = FactoryGirl.create(:client)
    client.users[0].email == FactoryGirl.attributes_for(:client)[:email]
  end
end
