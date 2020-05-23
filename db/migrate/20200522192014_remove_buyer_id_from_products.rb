class RemoveBuyerIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :buyer_id, :integer
  end
end
