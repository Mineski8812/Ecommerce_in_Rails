class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :Name
      t.datetime :EndingDate
      t.string :Description
      t.integer :Stock_id

      t.timestamps
    end
  end
end
