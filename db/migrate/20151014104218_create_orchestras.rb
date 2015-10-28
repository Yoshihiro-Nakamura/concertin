class CreateOrchestras < ActiveRecord::Migration
  def change
    create_table :orchestras do |t|
      t.string :name
      t.string :link_url
      t.timestamps
    end
  end
end
