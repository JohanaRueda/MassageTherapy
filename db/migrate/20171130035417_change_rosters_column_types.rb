class ChangeRostersColumnTypes < ActiveRecord::Migration[5.1]
  def up
    change_column :rosters, :user_id, :integer
    change_column :rosters, :offering_id, :integer
  end

  def down
    change_column :rosters, :user_id, :decimal
    change_column :rosters, :offering_id, :decimal
  end
end
