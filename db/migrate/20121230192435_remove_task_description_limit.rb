class RemoveTaskDescriptionLimit < ActiveRecord::Migration
  def up
    change_column :tasks, :description, :text, :limit => nil
  end

  def down
  end
end
