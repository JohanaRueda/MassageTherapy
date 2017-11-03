class CreateRosters < ActiveRecord::Migration[5.1]
  def change
    create_table :rosters do |t|
      t.decimal :user_id
      t.decimal :offering_id

      t.timestamps
    end
  end
end
