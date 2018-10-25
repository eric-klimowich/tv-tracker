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
end
