class AddColumnToArtistConcerts < ActiveRecord::Migration
  def change
    add_column :artist_concerts, :instrument_id, :integer
  end
end
