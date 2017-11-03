class FixColumnNameToUsers < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :users, :type, :admin
  end
end
