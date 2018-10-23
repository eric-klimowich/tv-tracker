class ReviewsController < ApplicationController
  before_action :find_user

  def new
    @review = Review.new
    @show = flash[:show_to_review]
    review_params[:show_id] = @show["id"]
    # @review = Review.create(user_id: @user.id, show_id: @id)
    # flash[:this_review] = @review
  end

  def create
    byebug
    @review = flash[:this_review]
    @review = Review.create(review_params)
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
