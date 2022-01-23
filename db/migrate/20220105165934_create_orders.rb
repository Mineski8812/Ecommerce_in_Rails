class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :Description
      t.integer :Amount
      t.integer :client_id
      t.integer :product_id
      t.string :references

      t.timestamps
    end
  end
end
