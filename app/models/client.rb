class Client < ActiveRecord::Base
  attr_accessible :hours_per_week, :name,
                  :users
  has_and_belongs_to_many :users
end
