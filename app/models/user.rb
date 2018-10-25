class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :user_shows
  has_many :shows, through: :user_shows
  validates :first_name, :last_name, :username, :password, presence: true
  validates :username, uniqueness: true

  def show_name
    "#{self.first_name} #{self.last_name[0]}."
  end

  def location
    "#{self.location_city}, #{self.location_state}"
  end

  def platform_total(platform)
    saved_shows = UserShow.where(user_id: self.id)
    saved_shows.select { |s| s.watched_on == "#{platform}" }.length
  end

  def total_watched
    self.user_shows.select { |s| s.status == "Watched" || s.status == "Watching" }.length
  end

  def total_finished
    self.user_shows.select { |s| s.status == "Watched" }.length
  end

  def total_watching
    self.user_shows.select { |s| s.status == "Watching" }.length
  end

  def total_saved
    self.shows.length
  end

  def last_logged_title
    @result = nil
    if self.user_shows
      @result = self.user_shows.last.show.title
    end
    @result
  end

  def last_logged_season
    @result = nil
    if self.user_shows
      @result = self.user_shows.last.season
    end
    @result
  end

  def last_logged_episode
    @result = nil
    if self.user_shows
      @result = self.user_shows.last.episode
    end
    @result
  end

  def last_logged_obj
    @object = nil
    if self.user_shows
      @object = self.user_shows.last
    end
    @object
  end


  end

  # def shows_watched
  #   @shows = []
  #   self.user_shows.select { |s| s.status == "Watched" || s.status == "Watching" }.map do |show|
  #     @shows << show.title
  #   end
  #   @shows
  # end
  #
  # def shows_finished
  #   self.user_shows.select { |s| s.status == "Watched" }.length
  # end
  #
  # def shows_watching
  #   @shows = []
  #   @shows << self.user_shows.select { |s| s.status == "Watching" }
  #   @shows.map do |show|
  #     @shows << show.title
  #   end
  #   @shows
  # end

end
