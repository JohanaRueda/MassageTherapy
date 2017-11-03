class AddFieldsToUsers2 < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :address, :boolean
  end
end
