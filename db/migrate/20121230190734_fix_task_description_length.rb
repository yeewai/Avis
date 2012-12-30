class FixTaskDescriptionLength < ActiveRecord::Migration
  def up
    change_column :tasks, :description, :text
  end

  def down
  end
end
