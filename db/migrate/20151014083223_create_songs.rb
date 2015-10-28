class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :composer_id
      t.string :video_id
      t.timestamps
    end
  end
end
