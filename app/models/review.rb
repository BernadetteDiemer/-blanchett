class Review < ApplicationRecord
  belongs_to :user
  belongs_to :art_service

  validates :comment, :rating, presence: true
end
