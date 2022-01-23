class ChangingNameInShop < ActiveRecord::Migration[6.1]
  def change
    change_table :stocks do |t|
      t.rename :Shop_id, :shop_id
    end
  end
end
