class AddKindRowToApples < ActiveRecord::Migration[6.0]
  def change
    add_column :apples, :kind, :string
  end
end
