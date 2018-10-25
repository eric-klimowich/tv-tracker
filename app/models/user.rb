class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :user_shows
  has_many :shows, through: :user_shows

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

end
