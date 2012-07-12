class ChangeTaskTypeAddDesc < ActiveRecord::Migration
  def change
    change_column :tasks, :task, :string
    add_column :tasks, :description, :string
  end
end
