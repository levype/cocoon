class AddNewCriteriaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :minimal_rent, :integer
    add_column :users, :max_rent, :integer
    add_column :users, :min_space, :integer
    add_column :users, :max_space, :integer
    add_column :users, :min_room, :integer
    add_column :users, :max_room, :integer
    add_column :users, :furnished, :boolean
  end
end
