class AddUserToItem < ActiveRecord::Migration
  def up
    add_column :items, :user_id, :integer
  end
end
