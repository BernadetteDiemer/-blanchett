class ArtService < ApplicationRecord
  belongs_to :users
  has_many :bookings

  has_many_attached :photos
  validates :title, :description, :price, :address, :category, presence: true
end
