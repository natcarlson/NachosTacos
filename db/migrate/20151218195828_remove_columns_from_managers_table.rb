class RemoveColumnsFromManagersTable < ActiveRecord::Migration
  def change
    remove_column :managers, :man_pass, :string
  end
end
