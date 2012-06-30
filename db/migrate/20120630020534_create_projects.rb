class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :name
      t.text :description
      t.integer :status
      t.string :variety
      t.integer :parent_id

      t.timestamps
    end
  end
end
