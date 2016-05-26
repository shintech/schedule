class PunchesController < ApplicationController
  def index
    @punches = Punch.all
  end

  def clock_in
    @punch = Punch.create(in: DateTime.now)
    # @punch.clock_in
    # Punch.last.update_attributes(in: DateTime.now)
    redirect_to :back

  end

  def clock_out
    @punch = Punch.last
    @punch.clock_out
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
