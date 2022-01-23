class ChangingDataTypeIntegerInProduct < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :Stock_id
  end

  end

