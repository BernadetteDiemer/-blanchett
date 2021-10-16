class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :art_services
end
