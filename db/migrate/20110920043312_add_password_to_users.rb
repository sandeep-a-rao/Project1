class AddPasswordToUsers < ActiveRecord::Migration
  def change
    add_column :users, :encrypted_password, :string
  end
  def del
    remove_column :users, :encrypted_password
  end
end
