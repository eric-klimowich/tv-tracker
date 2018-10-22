class User < ApplicationRecord
  has_many :reviews
  has_many :user_shows
  has_many :shows, through: :user_shows

  # testing
  
  def show_name
    "#{self.first_name} #{self.last_name[0]}."
  end

  def location
    "#{self.location_city}, #{self.location_state}"
  end
end
