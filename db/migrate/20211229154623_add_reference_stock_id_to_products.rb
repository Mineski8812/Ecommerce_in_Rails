class AddReferenceStockIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :stock, null: false, foreign_key: true, default:1
  end
end
