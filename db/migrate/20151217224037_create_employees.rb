class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :emp_num
      t.string :emp_class
      t.string :emp_name
      t.string :can_place_order
      t.string :can_change_menu
      t.string :can_add_employee

      t.timestamps null: false
    end
  end
end
