class AddColumnsToPartiesTable < ActiveRecord::Migration
  def change
    add_column :parties, :order_id, :integer
    add_column :parties, :menu_id, :integer
    add_column :parties, :mod_id, :integer
    add_column :parties, :employee_id, :integer
  end
end
