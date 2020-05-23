class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :seller_id, :user_id
    rename_column :orders, :buyer_id, :user_id
  end
end
