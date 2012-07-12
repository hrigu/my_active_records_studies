class User < ActiveRecord::Base
  attr_accessible :email, :is_internal_super_user, :password, :salt,
                  :clients
  has_and_belongs_to_many :clients
end
