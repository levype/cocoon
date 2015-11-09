class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :minimal_rent, :min_price
    rename_column :users, :max_rent, :max_price
    rename_column :locations, :CP, :cp
  end
end
