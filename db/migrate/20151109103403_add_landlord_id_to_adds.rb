class AddLandlordIdToAdds < ActiveRecord::Migration
  def change
    add_reference :adds, :landlord, index: true, foreign_key: true
  end
end
