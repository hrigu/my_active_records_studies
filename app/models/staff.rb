class Staff < ActiveRecord::Base
  attr_accessible :abbreviation, :first_name, :last_name, :client, :services

  validates_uniqueness_of :abbreviation

  belongs_to :client
  has_many :services
end
