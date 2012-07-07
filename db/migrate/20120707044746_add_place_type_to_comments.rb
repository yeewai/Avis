class AddPlaceTypeToComments < ActiveRecord::Migration
  def change
    add_column :comments, :place_type, :string
  end
end
