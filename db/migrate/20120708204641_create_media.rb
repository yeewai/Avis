class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.boolean :hide
      t.string :media_file_name
      t.string :media_content_type
      t.integer :media_file_size
      t.integer :item_id
      t.integer :user_id

      t.timestamps
    end
  end
end
