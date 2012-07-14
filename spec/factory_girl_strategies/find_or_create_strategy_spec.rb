
require 'spec_helper'

describe "factory_girl find_or_create_strategy" do

  before do
    @name = FactoryGirl.attributes_for(:color)[:name]

  end

  it "should store and return a new object if it doesn't exist yet'" do
    Color.where(name: @name).first.should be nil
    color = FactoryGirl.find_or_create(:color)
    color.name.should == @name
    color.id.should_not be nil
  end

  it "should return the already existing object if it already exist" do

    color = FactoryGirl.find_or_create(:color)
    other_color =  FactoryGirl.find_or_create(:color)
    color.id.should be other_color.id

  end
end