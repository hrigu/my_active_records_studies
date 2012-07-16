require 'spec_helper'

describe AdminUser do
  it "can do something I didn't know yet" do
    admin_user = FactoryGirl.create :admin_user

    admin_user.password.should match "secret"

  end
end
