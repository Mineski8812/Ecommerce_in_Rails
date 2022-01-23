class AddColumnCantToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products,:cant,:integer
  end
end
