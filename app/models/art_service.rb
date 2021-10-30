class ArtService < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings
  has_many :reviews

  has_many_attached :photos
  validates :title, :description, :price, :address, :category, presence: true

include PgSearch::Model
  pg_search_scope :search_by_title_and_category, against: [:title, :category],
    using: {
    tsearch: { prefix: true }
    }
end
