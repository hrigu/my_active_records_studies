require 'spec_helper'

default_color =  {name: 'yellow', rgb: "FFFF00", sort_order: 4}

describe Color do
  describe "with empty table" do
    it "should not find a record" do
      Color.all.size.should == 0
    end
  end
  describe "with one record" do
    before do
      Color.create default_color
    end
    it "should have one colors" do
      colors = Color.all
      colors.size.should == 1
      color = colors[0]
      color.name.should == default_color[:name]
      color.rgb.should == default_color[:rgb]
      color.sort_order.should == default_color[:sort_order]
    end
  end
end


