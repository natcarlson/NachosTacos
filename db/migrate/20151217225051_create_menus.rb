class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :item_name
      t.string :item_class
      t.integer :item_price

      t.timestamps null: false
    end
  end
end
