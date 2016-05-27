class PayPeriodsController < ApplicationController
  def index
    @pay_periods = PayPeriod.all
  end

  def show
    @pay_period = PayPeriod.find(params[:id])
  end

  def new
    @pay_period = PayPeriod.new
  end

  def create
    @pay_period = PayPeriod.create(pay_period_params)
  end

  def edit
    @pay_period = PayPeriod.find(params[:id])
  end

  def update
    @pay_period = PayPeriod.find[params[:id]]
    @pay_period.update_attributes(pay_period_params)
  end
  
end
