class CreateRosters < ActiveRecord::Migration[5.1]
  def change
    create_table :rosters do |t|
      t.integer :user_id
      t.integer :offering_id

      t.timestamps
    end
  end
end
