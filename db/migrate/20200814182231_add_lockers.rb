class AddLockers < ActiveRecord::Migration[6.0]
  def change
    create_table :lockers do |t|
      t.string :location
      t.integer :number
      t.integer :combination
      t.integer :book_count
      t.integer :student_id
    end
  end
end
