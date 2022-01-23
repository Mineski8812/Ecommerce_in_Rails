class AddCreatedByToModels < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :created_by,:integer, null: false, default: 0
    add_column :stocks, :created_by,:integer,null: false, default: 0
    add_column :products, :created_by,:integer,null: false, default: 0

  end
end
