class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :show, :destroy]
  skip_before_action :authorized, only: [:new, :create, :show]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end


  def create
    @user = User.create(user_params)
    if @user.valid?
      session[:user_id] = @user.id
      flash[:notice] = "Signup successful! Welcome, #{@user.username}"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def destroy
    if @user == current_user
      @user.destroy
    end
    redirect_to users_path
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password, :bio, :location_state, :location_city)
  end

  def find_user
    current_user
  end

end
