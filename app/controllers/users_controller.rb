class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @pay_periods = PayPeriod.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user.update_attributes(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password)
  end

end
