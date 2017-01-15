class AddForeignKeyToUsers < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :users, :roles
  end
end
