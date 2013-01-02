class AddLastOnlineToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_online, :datetime
    add_column :users, :last_online_at, :string
  end
end
