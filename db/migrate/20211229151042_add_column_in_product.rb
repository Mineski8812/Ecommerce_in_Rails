class AddColumnInProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :stock_id,:integer
  end
end
