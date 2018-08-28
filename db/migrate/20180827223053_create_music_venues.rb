class CreateMusicVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :music_venues do |t|
      t.string :name
      t.string :image_url
    end
  end
end

