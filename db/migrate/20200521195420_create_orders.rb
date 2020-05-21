class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :seller_id
      t.integer :buyer_id
      t.string :confirmation_number

      t.timestamps
    end
  end
end
