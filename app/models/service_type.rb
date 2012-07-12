class ServiceType < ActiveRecord::Base
  attr_accessible :duration, :explanation, :is_active, :is_holiday, :is_personal,
                  :note, :sort_order, :time_from, :time_to,
                  :color
  belongs_to :color
end
