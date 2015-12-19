class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :mod_name
      t.string :mod_class
      t.integer :mod_price

      t.timestamps null: false
    end
  end
end
