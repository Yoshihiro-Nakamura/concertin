class CreateConcertContacts < ActiveRecord::Migration
  def change
    create_table :concert_contacts do |t|
      t.integer :concert_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
