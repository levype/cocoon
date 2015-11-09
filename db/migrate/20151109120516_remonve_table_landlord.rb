class RemonveTableLandlord < ActiveRecord::Migration
  def change
    drop_table :landlords
  end
end
