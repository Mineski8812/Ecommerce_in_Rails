class DeleteColumnShopIdInStocks < ActiveRecord::Migration[6.1]
  def change
    remove_column :stocks, :shop_id
  end
end
