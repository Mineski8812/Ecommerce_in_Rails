class CreateStockShops < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_shops do |t|
      t.string :Name
      t.string :Description
      t.integer :Shop_id

      t.timestamps
    end
  end
end
