class CreateAdds < ActiveRecord::Migration
  def change
    create_table :adds do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :space
      t.integer :rooms
      t.string :link

      t.timestamps null: false
    end
  end
end
