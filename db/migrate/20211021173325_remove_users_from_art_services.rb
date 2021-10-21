class RemoveUsersFromArtServices < ActiveRecord::Migration[6.0]
  def change
    remove_reference :art_services, :users, index:true
  end
end
