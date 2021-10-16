class CreateArtServices < ActiveRecord::Migration[6.0]
  def change
    create_table :art_services do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :address
      t.string :category
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
