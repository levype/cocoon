class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :adds, :ads
  end
end
