class DeleteReferenceColumnInOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders,:references
  end
end
