class User < ActiveRecord::Base
  attr_accessible :email, :is_internal_super_user, :password, :salt,
                  :clients
  validates_uniqueness_of :email
  has_and_belongs_to_many :clients
end
