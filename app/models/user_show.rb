class UserShow < ApplicationRecord
  belongs_to :user
  belongs_to :show
  validates :status, :season, :episode, presence: true
  validates :season, :episode, numericality: true, numericality: { greater_than_or_equal_to: 1 }
  # validate :not_cancelled
  #
  # def not_cancelled
  #   if status == "Waiting for new episodes" && user_show.show.status == false
  #       errors.add(:status, "Series complete. No new episodes.")
  #   end
  # end
end
