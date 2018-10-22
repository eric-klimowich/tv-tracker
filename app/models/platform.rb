class Platform < ApplicationRecord
  has_many :show_platforms
  has_many :shows, through: :show_platforms

end
