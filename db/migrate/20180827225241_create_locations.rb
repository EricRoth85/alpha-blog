class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.belongs_to :music_venue
      t.string :address
      t.float :latitude, null: false
      t.float :longitude, null: false
      geocoded_by :address
      after_validation :geocode
    end
  end
end
