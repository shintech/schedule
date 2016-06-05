class PunchesController < ApplicationController
  def index
    @punches = Punch.all
  end

  def clock_in
    @work_day = WorkDay.create(user_id: current_user.id, pay_period_id: PayPeriod.first.id)
    @punch = Punch.create(in: DateTime.now, user_id: current_user.id, work_day_id: @work_day.id)
    @punch.user.update_attributes(clocked_in: true)
    flash[:notice] = "Successfully clocked in at " + "#{@punch.in.strftime('%I:%M %p')}"
    redirect_to :back
  end

  def clock_out
    @punch = Punch.last
    @punch.update_attributes(out: DateTime.now)
    @punch.user.update_attributes(clocked_in: false)
    flash[:notice] = "Successfully clocked out at " + "#{@punch.out.strftime('%I:%M %p')}"
    redirect_to :back
  end

  def create
    punch.create(punch_params)
  end

  private

  def punch_params
    params.require(:punch).permit(:in, :out).merge(user_id: current_user.id)
  end
end
