class Review < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :rating, presence: :true
  validates :content, presence: :true
  validates :rating, inclusion: { in: Review::RATINGS }, numericality: { only_integer: true }
end
