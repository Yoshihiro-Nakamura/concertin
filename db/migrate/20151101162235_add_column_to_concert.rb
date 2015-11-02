class AddColumnToConcert < ActiveRecord::Migration
  def change
    add_column :concerts, :main_song_id, :integer
  end
end
