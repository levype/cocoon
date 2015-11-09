class RenameOldTableToNewTablejoinlocation < ActiveRecord::Migration
  def change
    rename_table :joinlocations, :joinlocationstousers
  end
end
