class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :title
      t.datetime :start_dateime
      t.time :open_time
      t.integer :hall_id
      t.integer :orchestra_id
      t.integer :conductor_id
      t.string :price
      t.string :link_url
      t.timestamps
    end
  end
end
