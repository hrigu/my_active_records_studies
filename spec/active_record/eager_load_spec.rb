require 'spec_helper'

#http://guides.rubyonrails.org/active_record_querying.html#eager-loading-associations
describe "eager_loading" do

  it "should work" do
    user = FactoryGirl.create(:user, email: "user@planik.ch")
    planik = FactoryGirl.create(:client, name: "planik", users: [user])

    staff1 = FactoryGirl.create(:staff, abbreviation: "staff1", client: planik)
    staff2 = FactoryGirl.create(:staff, abbreviation: "staff2", client: planik)
    staff3 = FactoryGirl.create(:staff, abbreviation: "staff3", client: planik)

    yellow = FactoryGirl.create(:color)
    red = FactoryGirl.create(:color, name: "red")
    fruehschicht = FactoryGirl.create(:service_type, explanation: "fruehschicht", color: yellow)
    spaetschicht = FactoryGirl.create(:service_type, explanation: "spaetschicht", color: red)
    FactoryGirl.create(:service, service_type: fruehschicht, staff: staff1)
    FactoryGirl.create(:service, service_type: spaetschicht, staff: staff2)
    FactoryGirl.create(:service, service_type: spaetschicht, staff: staff3)


    ActiveRecord::Base.logger = Logger.new(STDOUT)

    colors = Color.includes(:service_types => [:services => [:staff => [:client => [:users]]]]).all
    colors.size.should == 2

    #explain feature (new in Rails 3.2. See release notes)
    puts Color.where(:name == "yellow").explain
    colors[0].service_types[0].services[0].staff.client.users[0].email.should match "user@planik.ch"

    ActiveRecord::Base.logger = nil
  end
end