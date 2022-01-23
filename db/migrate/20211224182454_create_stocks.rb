class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :Name
      t.string :Description
      t.integer :Shop_id

      t.timestamps
    end
  end
end
