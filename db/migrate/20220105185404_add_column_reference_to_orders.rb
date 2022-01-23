class AddColumnReferenceToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :products, null: false, foreign_key: true, index: true
  end
end
