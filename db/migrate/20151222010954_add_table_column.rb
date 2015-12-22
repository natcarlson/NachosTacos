class AddTableColumn < ActiveRecord::Migration
  def change
    add_column :orders, :complete, :string
  end
end
