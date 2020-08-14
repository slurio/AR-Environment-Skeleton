class RemoveTypeRowFromApples < ActiveRecord::Migration[6.0]
  def change
    remove_column :apples, :type
  end
end
