require 'spec_helper'

describe "optimistic_locking" do

  it "should throw an exception if I try to save the second example" do

    yellow = FactoryGirl.create :color

    puts "initial lock_version: #{Color.all.first.lock_version}"


    yellow1 = Color.find_by_name yellow.name
#    puts " after fetching yellow1 #{Color.all.first.lock_version}"

    yellow2 = Color.find_by_name yellow.name
#    puts " after fetching yellow2 #{Color.all.first.lock_version}"

    yellow1.name = "green"
    yellow2.name = "blue"

    yellow1.save
    puts "after saving yellow1 #{Color.all.first.lock_version}"

    error = nil
    begin
      yellow2.save
    rescue ActiveRecord::StaleObjectError => err
      error = err
    end

    error.class.should == ActiveRecord::StaleObjectError

    Color.all.first.name.should match "green"
  end
end