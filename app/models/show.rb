class Show < ApplicationRecord
  has_many :reviews
  has_many :user_shows
  has_many :users, through: :user_shows
  has_many :show_platforms
  has_many :platforms, through: :show_platforms
end
