class ChangeTaskprojectToId < ActiveRecord::Migration
  def change
    rename_column :tasks, :project, :project_id
  end
end
