class PayPeriod < ActiveRecord::Base
  has_many :work_days
end
