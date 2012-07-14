require 'spec_helper'

describe "playing with a graph" do

  it "should do something" do

    chrigu = FactoryGirl.create(:user, email: "chrigu@planik.ch")
    xa = FactoryGirl.create(:user, email: "xa@planik.ch")
    dominic = FactoryGirl.create(:user, email: "dominic@planik.ch")

    planik = FactoryGirl.create(:client, name: "planik", users: [chrigu, xa, dominic])
    fb = FactoryGirl.create(:client, name: "fb", users: [chrigu, dominic])
    substring = FactoryGirl.create(:client, name: "substring", users: [xa])

    staff_chrigu = FactoryGirl.create(:staff, abbreviation: "muc", client: planik)
    staff_xa = FactoryGirl.create(:staff, abbreviation: "xa", client: planik)
    staff_dominic = FactoryGirl.create(:staff, abbreviation: "dom", client: planik)

    yellow = FactoryGirl.create(:color)
    red = FactoryGirl.create(:color, name: "red")
    blue = FactoryGirl.create(:color, name: "blue")

    fruehschicht = FactoryGirl.create(:service_type, explanation: "fruehschicht", color: yellow)
    mittelschicht = FactoryGirl.create(:service_type, explanation: "mittelschicht", color: red)
    spaetschicht = FactoryGirl.create(:service_type, explanation: "spaetschicht", color: blue)

    service1 = FactoryGirl.create(:service, service_type: fruehschicht, staff: staff_chrigu)

    found_yellow = Color.find_by_name "yellow"

    ActiveRecord::Base.logger = Logger.new(STDOUT)
    found_user = found_yellow.service_types[0].services[0].staff.client.users[0]
    puts found_user.email


    #chrigu.clients.size.should == 2
    #found_staff = Staff.where(abbreviation: "muc").first
    #found_staff.client.users.should(include(chrigu))



  end
end