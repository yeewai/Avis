class ChangeOwnertoOwnerId < ActiveRecord::Migration
  def change
    rename_column :tasks, :owner, :owner_id
  end
end
