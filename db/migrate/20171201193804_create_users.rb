class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :address
      t.boolean :admin
      t.string :license

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
