class UserShowsController < ApplicationController
  before_action :find_user_show, only: [:show, :edit, :update, :destroy]
  before_action :find_user

  def index
    @saved_shows = @user.shows
  end

  def show
    @show = @user_show.show
    @review = Review.find_by(user_id: @user.id, show_id: @show.id) 
    flash[:show_id_to_review] = @show.id
  end

  def new
    @user_show = UserShow.new
    @users = User.all
    @shows = Show.all
  end

  def create
    @user_show = UserShow.create(user_show_params)
    redirect_to user_shows_path
  end

  def edit
    @show = @user_show.show
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

  def find_user_show
    @user_show = UserShow.find_by(id: params[:id])
  end

  def user_show_params
    params.require(:user_show).permit(:user_id, :show_id, :status, :season, :episode)
  end

  def find_user
    @user = User.find(1)
  end

end
