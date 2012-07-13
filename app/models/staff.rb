class Staff < ActiveRecord::Base
  attr_accessible :abbreviation, :first_name, :last_name, :client

  belongs_to :client

end
