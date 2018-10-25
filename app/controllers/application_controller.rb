class ApplicationController < ActionController::Base
  # helper_method :current_user
  # helper_method :logged_in?
  before_action :authorized

  def current_user
    @user = User.find_by({ id: session[:user_id] })
  end

  def logged_in?
    !!current_user()
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def index

  end

  def average_rating
    reviews = Review.where(show_id: self.id)
    sum = 0
    total = 0
    reviews.each do |review|
      sum += review.rating
      total += 1
    end
    @average_rating = sum/total

  end

end
