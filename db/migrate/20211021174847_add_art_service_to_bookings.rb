class AddArtServiceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :art_service, null: false, foreign_key: true
  end
end
