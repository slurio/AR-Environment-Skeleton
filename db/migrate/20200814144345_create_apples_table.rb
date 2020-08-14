class CreateApplesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :apples do |t|
      t.string :type
      t.string :status
      t.integer :teacher_id
    end
  end
end
