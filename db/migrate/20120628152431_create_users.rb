class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.text :password
      t.integer :role
      t.text :email
      t.boolean :notify
      t.integer :gmt
      t.date :status
      t.text :name
      t.date :birthday
      t.text :zodiac
      t.text :residence
      t.text :colour
      t.text :position
      t.text :website
      t.text :bio
      t.text :quote
      t.text :contact
      t.integer :theme

      t.timestamps
    end
  end
end
