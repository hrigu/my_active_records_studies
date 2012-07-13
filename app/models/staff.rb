class Staff < ActiveRecord::Base
  attr_accessible :abbreviation, :first_name, :last_name, :client, :services

  belongs_to :client
  has_many :services
end
