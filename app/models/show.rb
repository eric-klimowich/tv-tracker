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

end
