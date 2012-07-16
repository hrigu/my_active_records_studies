class ServiceType < ActiveRecord::Base
  attr_accessible :duration, :explanation, :is_active, :is_holiday, :is_personal,
                  :note, :sort_order, :time_from, :time_to,
                  :color_id, #need for active_admin, otherwise: "can't mass-assign protected field color_id'"
                  :color, :services
  validates_uniqueness_of :explanation

  belongs_to :color
  has_many :services


end
