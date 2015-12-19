class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.integer :man_num
      t.string :man_name
      t.string :man_pass

      t.timestamps null: false
    end
  end
end
