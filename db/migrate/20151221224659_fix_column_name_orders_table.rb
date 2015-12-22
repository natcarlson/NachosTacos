class FixColumnNameOrdersTable < ActiveRecord::Migration
  def change
    rename_column :orders, :menu_name, :item_name
  end
end
