class RenameStartDateimeToConcert < ActiveRecord::Migration
  def change
    rename_column :concerts, :start_dateime, :start_datetime
  end
end
