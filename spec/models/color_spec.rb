require 'spec_helper'


describe Color do
  describe "with empty table" do
    it "should not find a record" do
      Color.all.size.should == 0
    end
  end
  describe "with one record" do

    before do
      FactoryGirl.create :color
    end

    it "should have one colors" do
      colors = Color.all
      colors.size.should == 1
      color = colors[0]
      attrs = FactoryGirl.attributes_for(:color)
      color.name.should == attrs[:name]
      color.rgb.should == attrs[:rgb]
      color.sort_order.should == attrs[:sort_order]
    end
  end

  describe "color.name must be unique" do

    before do
      FactoryGirl.create :color
    end

    it "should throw an exception" do
      begin
        FactoryGirl.create :color
        message = nil
      rescue ActiveRecord::RecordInvalid => invalid
        message = invalid.record.errors.messages[:name][0]
      end
      message.should match "Already a Color with this name"
      Color.all.size.should == 1
    end
  end
end


