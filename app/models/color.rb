class Color < ActiveRecord::Base
  attr_accessible :name, :rgb, :sort_order
  validates :name, uniqueness: {message: "There is already a Color with the same name" }

end
