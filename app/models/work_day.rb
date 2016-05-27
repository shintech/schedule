class WorkDay < ActiveRecord::Base
  belongs_to :pay_period
  has_many :punches
  def time_worked
    ((self.out - self.in) / 3600).round(2)
  end
end
