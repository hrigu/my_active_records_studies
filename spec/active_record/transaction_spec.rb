require 'spec_helper'

describe "transaction" do

  it "should work" do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    yellow = FactoryGirl.create :color

    #ActiveRecord::Base.transaction
    yellow.transaction do
      yellow.name = "blue"
      yellow.save!
      raise ActiveRecord::Rollback, "Something bad happend"
      Color.first!.name.should == "blue"
    end

    #the object's color is still blue
    yellow.name.should == "blue"
    #but on the database, the change has been rollbacked
    Color.first!.name.should == "yellow"
    ActiveRecord::Base.logger = nil
  end
end