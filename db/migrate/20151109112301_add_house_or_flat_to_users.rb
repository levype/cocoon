class AddHouseOrFlatToUsers < ActiveRecord::Migration
  def change
    add_column :users, :house, :boolean
    add_column :users, :flat, :boolean
  end
end
