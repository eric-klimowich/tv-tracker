class Review < ApplicationRecord
  belongs_to :user
  belongs_to :show
  validates :rating, presence: true, numericality: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :content, presence: true, length: { minimum: 3 }
end
