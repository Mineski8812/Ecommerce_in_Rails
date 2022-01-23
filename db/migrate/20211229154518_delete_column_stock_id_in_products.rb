class DeleteColumnStockIdInProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products,:stock_id
  end
end
