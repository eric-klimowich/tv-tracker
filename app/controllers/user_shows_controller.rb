class UserShowsController < ApplicationController
  before_action :find_user_shows, only: [:show, :edit, :update, :destroy]

  def index
    @user_shows = UserShow.all

  end

  def show

  end

  def new
    @user_show = UserShow.new
  end

  def create
    @user_show = UserShow.create(user_show_params)
    redirect_to user_shows_path
  end

  def edit

  end

  def update
    @user_show.update(user_show_params)
    redirect_to user_shows_path
  end

  def destroy
    @user_show.destroy
    redirect_to user_shows_path
  end

  private

  def find_user_shows
    @user_show = UserShow.find_by(id: params[:id])
  end

  def user_show_params
    params.require(:user_show).permit(:user_id, :show_id, :status, :season, :episode)
  end

end
