class UserShowsController < ApplicationController
  before_action :find_user_show, only: [:show, :edit, :update, :destroy]
  before_action :find_user

  def index
    @saved_shows = @user.shows

  end

  def show
    @show = @user_show.show
    @review = Review.find_by(user_id: @user.id, show_id: @show.id)
    session[:show_id] = @show.id
  end

  def new
    @user_show = UserShow.new
    @show = Show.find_by(id: session[:show_id])
  end

  def create
    @user_show = UserShow.find_or_create_by(user_show_params)
    @user_show.update(user_id: @user.id, show_id: session[:show_id])
    if @user_show.valid?
      redirect_to user_shows_path
    else
      flash[:error] = @user_show.errors.full_messages
      redirect_to new_user_show_path
    end
  end

  def edit
    @show = @user_show.show
  end

  def update
    @user_show.update(user_show_params)
    redirect_to user_show_path(@user_show)
  end

  def destroy
    @user_show.destroy
    redirect_to user_shows_path
  end

  private

  def find_user_show
    @user_show = UserShow.find_by(id: params[:id])
  end

  def user_show_params
    params.require(:user_show).permit(:user_id, :show_id, :status, :season, :episode, :watched_on)
  end

  def find_user
    current_user
  end

end
