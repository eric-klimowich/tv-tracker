class Show < ApplicationRecord
  has_many :reviews
  has_many :user_shows
  has_many :users, through: :user_shows
  has_many :show_platforms
  has_many :platforms, through: :show_platforms

  def self.search(search)
    if search
      if Show.where("title like ?", "%#{search}%")
      Show.where("title like ?", "%#{search}%")
      else
        "no results"
      end

    else
      order('id DESC')
    end
  end

end
