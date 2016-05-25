class Punch < ActiveRecord::Base

  belongs_to :work_day
  
  def clock_in
    self.update_attributes(in: DateTime.now)
  end

  def clock_out
    self.update_attributes(out: DateTime.now)
  end

  def time_worked
    ((self.out - self.in) / 3600).round(2)
  end

  def in_format
    self.in.strftime('%I:%M:%S %p on %a %b %d %Y')
  end

  def out_format
    self.out.strftime('%I:%M:%S %p on %a %b %d %Y')
  end


end
