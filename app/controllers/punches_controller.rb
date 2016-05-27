class PunchesController < ApplicationController
  def index
    @punches = Punch.all
  end

  def clock_in
    @punch = Punch.create(in: DateTime.now)
    flash[:notice] = "Successfully clocked in at " + "#{@punch.in.strftime('%I:%M %p')}"
    redirect_to :back
  end

  def clock_out
    @punch = Punch.last
    @punch.update_attributes(out: DateTime.now)
    flash[:notice] = "Successfully clocked out at " + "#{@punch.out.strftime('%I:%M %p')}"
    redirect_to :back
  end

  def create
    punch.create(punch_params)
  end

  private

  def punch_params
    params.require(:punch).permit(:in, :out)
  end
end
