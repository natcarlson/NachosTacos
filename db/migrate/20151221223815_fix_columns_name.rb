class FixColumnsName < ActiveRecord::Migration
  def change
    rename_column :orders, :menu_name, :item_name
  end

  def change
    rename_column :orders, :menu_price, :item_price
  end
end
