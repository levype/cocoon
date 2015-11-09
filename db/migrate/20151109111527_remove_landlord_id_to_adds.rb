class RemoveLandlordIdToAdds < ActiveRecord::Migration
  def change
    remove_column :adds, :landlord_id
  end
end
