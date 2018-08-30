class AddAddressToMusicVenues < ActiveRecord::Migration[5.2]
  def change
    add_column :music_venues, :address, :string
    add_column :music_venues, :latitude, :float
    add_column :music_venues, :longitude, :float
  end
end
