class CreateConcertSongs < ActiveRecord::Migration
  def change
    create_table :concert_songs do |t|
      t.integer :concert_id
      t.integer :song_id

      t.timestamps
    end
  end
end
