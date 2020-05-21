class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :type, :type_of
  end
end
