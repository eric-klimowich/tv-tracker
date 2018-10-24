class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    #render the sing in form

  end

  def create
    # byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      current_user=(@user)
      redirect_to @user
    else
      flash[:error] = "Username or Password Invalid"
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end

  def current_user=(user)
    @current_user = user
  end

end
