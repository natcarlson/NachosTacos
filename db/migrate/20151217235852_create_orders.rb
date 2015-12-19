class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :table_num
      t.string :emp_name
      t.string :menu_name
      t.integer :menu_price
      t.string :mod_name
      t.integer :mod_price
      t.references :party, index: true, foreign_key: true
      t.references :menu, index: true, foreign_key: true
      t.references :mod, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
