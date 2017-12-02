class AddResetToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :reset_digest, :string
    add_column :users, :rails, :string
    add_column :users, :db, :migrate
  end
end
