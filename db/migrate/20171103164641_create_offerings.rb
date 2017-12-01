class CreateOfferings < ActiveRecord::Migration[5.1]
  def change
    create_table :offerings do |t|
      t.datetime :courseDate
      t.text :courseNotes
      t.decimal :coursePrice
      t.integer :course_id

      t.timestamps
    end
  end
end
