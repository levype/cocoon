class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :name
      t.string :tel
      t.string :mail

      t.timestamps null: false
    end
  end
end
