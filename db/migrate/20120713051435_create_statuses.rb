class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.text :past
      t.text :future
      t.boolean :hiatus
      t.date :start_late_notice

      t.timestamps
    end
  end
end
