class AddpolymorphismtoTask < ActiveRecord::Migration
  def change
    add_column :tasks, :project_type, :string
    add_column :tasks, :user_id, :string
  end
end
