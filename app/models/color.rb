class Color < ActiveRecord::Base
  attr_accessible :name, :rgb, :sort_order, :service_types
  validates :name, uniqueness: {message: "There is already a Color with the same name" }

  has_many :service_types

end
