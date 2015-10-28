class CreateConductors < ActiveRecord::Migration
  def change
    create_table :conductors do |t|
      t.string :name
      t.string :image_url
      t.timestamps
    end
  end
end
