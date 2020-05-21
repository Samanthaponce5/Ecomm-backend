class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :order_id
      t.integer :seller_id
      t.integer :buyer_id
      t.string :title
      t.string :type
      t.string :category
      t.decimal :price

      t.timestamps
    end
  end
end
