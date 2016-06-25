class WorkDay < ActiveRecord::Base
  belongs_to :user
  belongs_to :pay_period
  has_one :punch
  def time_worked
    ((self.out - self.in) / 3600).round(2)
  end
end
