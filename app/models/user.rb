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
    if self.user_shows[0]
      sorted = self.user_shows.sort_by { |m| [m.created_at, m.updated_at].max }
      @result = sorted.reverse[0].show.title
    end
    @result
  end

  def last_logged_season
    @result = nil
    if self.user_shows[0]
      sorted = self.user_shows.sort_by { |m| [m.created_at, m.updated_at].max }
      @result = sorted.reverse[0].season
    end
    @result
  end

  def last_logged_episode
    @result = nil
    if self.user_shows[0]
      sorted = self.user_shows.sort_by { |m| [m.created_at, m.updated_at].max }
      @result = sorted.reverse[0].episode
    end
    @result
  end

  def last_logged_obj
    @object = nil
    if self.user_shows[0]
      sorted = self.user_shows.sort_by { |m| [m.created_at, m.updated_at].max }
      @object = sorted.reverse[0]
    end
    @object
  end

  def last_log_id
    @object = nil
    if self.user_shows[0]
      sorted = self.user_shows.sort_by { |m| [m.created_at, m.updated_at].max }
      @object = sorted.reverse[0].id
      #search user's user_show table data for most recent "updated_at"
    end
    @object
  end

  def already_saved(show_id)
    saved_shows = self.user_shows
    saved_ids = saved_shows.map { |s| s.show_id }
    saved_ids.include?(show_id)
  end

  def saved_shows
    @saved_shows = self.shows
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
