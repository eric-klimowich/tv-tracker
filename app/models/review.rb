class Review < ApplicationRecord
  belongs_to :user
  belongs_to :show

  def self.search(search)
    if search
      if Review.where("content like ?", "%#{search}%")
      Review.where("content like ?", "%#{search}%")
      else
        "no results"
      end

    else
      order('id DESC')
    end
  end

end
