class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :courseName
      t.text :courseDesc
      t.string :thumbnail

      t.timestamps
    end
  end
end
