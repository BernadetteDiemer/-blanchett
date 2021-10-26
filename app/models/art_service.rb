class ArtService < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, :reviews

  has_many_attached :photos
  validates :title, :description, :price, :address, :category, presence: true
end
