class AccessController < ApplicationController
  before_action :confirm_logged_in, except: [:login, :attempt_login, :logout]

  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(username: params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      session[:user_id] = authorized_user.id
      redirect_to user_path(session[:user_id])
    else
      redirect_to(controller: 'access', action: 'login')
    end
  end

  def logout
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(action: "login")
  end

end
