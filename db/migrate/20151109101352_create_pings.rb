class CreatePings < ActiveRecord::Migration
  def change
    create_table :pings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :add, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
