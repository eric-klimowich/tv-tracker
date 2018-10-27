class Show < ApplicationRecord
  has_many :reviews
  has_many :user_shows
  has_many :users, through: :user_shows
  has_many :show_platforms
  has_many :platforms, through: :show_platforms
  validates :title, :seasons, :genre, :lead_actor, :description, presence: true
  validates :title, uniqueness: true
  validates :seasons, numericality: true

  def self.search(search)
    if search == "five_stars"
      "popular"
    elsif search
      if Show.where("title like ?", "%#{search}%")
      Show.where("title like ?", "%#{search}%")
      else
        "no results"
      end

    else
      order('id DESC')
    end
  end

  def this_saved_show(user)
    UserShow.find_by(show_id: self.id, user_id: user.id)
  end

  def also_liked
    top_reviews = self.reviews.select {|r| r.rating > 3}
    reviewers_who_liked = top_reviews.map {|r| r.user}
    reccommendations = []

    reviewers_who_liked.each do |reviewer|
      reviewer.shows_liked.each do |show|
        if show != self
          reccommendations << show.title
        end
      end
    end
    recommendations
  end



  # def popular_shows
  #   @popular_shows = []
  #   all_ids = []
  #   shows = UserShow.all.map { |s| s.show}.each { |s| all_ids << s.id }.sort
  #   UserShow.where("show_id")
  #
  #   Model.select(:field)
  #
  #   from users group by last_name having max(count(*));
  #
  # end

  def average_rating
    reviews = self.reviews
    @average_rating = "--"
    if self.reviews
      sum = 0
      total = 0
      reviews.each do |review|
        sum += review.rating.to_f
        total += 1
        @average_rating = (sum/total).round(1)
      end
    end
    @average_rating
  end

  # def update_platforms(show_params)
  #   if show_params[:netflix] != self.netflix
  #     if show_params[:netflix] == false
  #       show_netflix = ShowPlatform.find_by(show_id: self.id)
  #       show_netflix.destroy
  #     else
  #       ShowPlatform.create(show_id: self.id, platform_id: 1)
  #     end
  #   end
  #   if show_params[:prime] != self.prime
  #     if show_params[:prime] == false
  #       show_prime = ShowPlatform.find_by(show_id: self.id)
  #       show_prime.destroy
  #     else
  #       ShowPlatform.create(show_id: self.id, platform_id: 2)
  #     end
  #   end
  #   if show_params[:hbo] != self.hbo
  #     if show_params[:hbo] == false
  #       show_hbo = ShowPlatform.find_by(show_id: self.id)
  #       show_hbo.destroy
  #     else
  #       ShowPlatform.create(show_id: self.id, platform_id: 3)
  #     end
  #   end
  #   if show_params[:hulu] != self.hulu
  #     if show_params[:hulu] == false
  #       show_hulu = ShowPlatform.find_by(show_id: self.id)
  #       show_hulu.destroy
  #     else
  #       ShowPlatform.create(show_id: self.id, platform_id: 4)
  #     end
  #   end
  # end

            # <%= button_to "Edit Show Details", edit_show_path(@show), method: :get %>

end
