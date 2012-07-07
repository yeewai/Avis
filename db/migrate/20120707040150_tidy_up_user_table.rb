class TidyUpUserTable < ActiveRecord::Migration
  def change
    remove_column :users, :password_salt
    remove_column :users, :password_hash
    remove_column :users, :status
  end
end
