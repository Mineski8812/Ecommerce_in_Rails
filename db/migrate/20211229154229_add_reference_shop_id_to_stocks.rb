class AddReferenceShopIdToStocks < ActiveRecord::Migration[6.1]
  def change
    add_reference :stocks, :shop, null: false, foreign_key: true, default:1
  end
end
