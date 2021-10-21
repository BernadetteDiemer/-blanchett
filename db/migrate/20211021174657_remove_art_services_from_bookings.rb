class RemoveArtServicesFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :art_services, index:true
  end
end
