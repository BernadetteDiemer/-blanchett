class AddUserToArtService < ActiveRecord::Migration[6.0]
  def change
    add_reference :art_services, :user, null: false, foreign_key: true
  end
end
