class AddColumnsToAds < ActiveRecord::Migration
  def change
    add_reference :ads, :location, index: true, foreign_key: true
    add_column :ads, :site, :string
  end
end
