class CreateToiletPlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :toilet_places do |t|
      t.string :address, null: false
      t.float :longitude, null: false
      t.float :latitude, null: false
      t.string :name, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
