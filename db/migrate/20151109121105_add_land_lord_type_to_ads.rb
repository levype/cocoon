class AddLandLordTypeToAds < ActiveRecord::Migration
  def change
    add_column :ads, :landlord_name, :string
    add_column :ads, :landlord_tel, :string
    add_column :ads, :landlord_email, :string
  end
end
