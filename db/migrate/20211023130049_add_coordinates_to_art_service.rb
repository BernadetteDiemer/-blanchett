class AddCoordinatesToArtService < ActiveRecord::Migration[6.0]
  def change
    add_column :art_services, :latitude, :float
    add_column :art_services, :longitude, :float
  end
end
