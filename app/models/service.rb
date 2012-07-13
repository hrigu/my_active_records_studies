class Service < ActiveRecord::Base
  attr_accessible :date_time_from, :date_tyime_to, :error_text,
                  :service_type, :staff

  belongs_to :service_type
  belongs_to :staff
end
