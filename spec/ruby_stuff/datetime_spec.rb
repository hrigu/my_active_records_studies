require "rspec"

describe DateTime do

  it "should print it with a formatter" do
    dt = DateTime.parse('17 Jul 2012 10:16:00')

    #pp dt
    #pp dt.strftime("Printed on %Y/%m/%d") #=> “Printed on 04/09/2003″
    #pp dt.strftime("at %H:%M") #=> “at 08:56AM”
  end

  it "should parse a string in a given format" do
    dt = DateTime.strptime('2012-07-16 08:00', '%Y-%m-%d %H:%M')
    dt.strftime('%Y-%m-%d').should match "2012-07-16"
    dt.strftime('%H:%M').should match "08:00"

  end

  it "should parse a string with only time" do
    dt = DateTime.strptime('08:00', '%H:%M')
    dt.strftime('%H:%M').should match "08:00"

  end


end