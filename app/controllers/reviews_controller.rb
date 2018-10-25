class ReviewsController < ApplicationController
  before_action :find_user

  def new
    @review = Review.new
    @show = Show.find_by(id: session[:show_id])
  end

  def create
    @review = Review.create(review_params)
    @show = Show.find_by(id: session[:show_id])
    @review.update(user_id: @user.id, show_id: @show.id)
    @user_show = UserShow.find_by(user_id: @user.id, show_id: @show.id)
    
    if @user_show
      redirect_to user_show_path(@user_show)
    else
      redirect_to show_path(@show)
    end
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :user_id, :show_id)
  end

  def find_user
    current_user
  end

end
