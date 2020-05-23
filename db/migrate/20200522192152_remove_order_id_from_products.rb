class RemoveOrderIdFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :order_id, :integer
  end
end
