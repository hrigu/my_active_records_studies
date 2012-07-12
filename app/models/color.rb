class Color < ActiveRecord::Base
  attr_accessible :name, :rgb, :sort_order
  validates :name, uniqueness: {message: "Already a Color with this name" }

end
