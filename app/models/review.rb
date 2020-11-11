class Review < ApplicationRecord
  RATINGS = (0..5).to_a
  belongs_to :restaurant
  validates :rating, presence: :true
  validates :content, presence: :true
  validates :rating, inclusion: { in: Review::RATINGS }, numericality: { only_integer: true }
end
