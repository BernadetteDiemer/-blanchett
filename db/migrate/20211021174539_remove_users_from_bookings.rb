class RemoveUsersFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :users, index:true
  end
end
