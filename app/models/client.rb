class Client < ActiveRecord::Base
  attr_accessible :hours_per_week, :name,
                  :users, :staffs

  validates_uniqueness_of :name

  has_and_belongs_to_many :users
  has_many :staffs
end
