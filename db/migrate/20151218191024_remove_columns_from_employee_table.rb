class RemoveColumnsFromEmployeeTable < ActiveRecord::Migration
  def change
    remove_column :employees, :can_place_order, :string
    remove_column :employees, :can_change_menu, :string
    remove_column :employees, :can_add_employee, :string
  end
end
