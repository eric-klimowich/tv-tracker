class ReviewsController < ApplicationController
  before_action :find_user

  def new
    @review = Review.new
    id = flash[:show_id_to_review]
    flash[:show_id] = id
  end

  def create
    @review = Review.create(review_params)
    @review.show_id = flash[:show_id]
    @review.update(user_id: @user.id)
    redirect_to user_shows_path
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :user_id, :show_id)
  end

  def find_user
    @user = User.find(1)
  end

end
