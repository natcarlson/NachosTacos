class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_num
      t.string :last_name
      
      t.timestamps null: false
    end
  end
end
