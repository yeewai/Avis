class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task
      t.integer :state
      t.integer :kind
      t.integer :owner
      t.integer :project

      t.timestamps
    end
  end
end
