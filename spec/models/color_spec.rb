require 'spec_helper'

describe Color do
  describe "with empty table" do
    it "should not find a record" do
      Color.all.size.should == 0
    end
  end
  describe "with one record" do
    before do
      Color.create [{name: 'yellow', rgb: "FFFF00", sort_order: 4}]

    end
    it "should have one colors" do
      colors = Color.all
      colors.size.should == 1
      color = colors[0]
      color.name.should == "yellow"
      color.rgb.should == "FFFF00"
      color.sort_order.should == 4
    end
  end
end


