class Medium < ActiveRecord::Base
  attr_accessible :hide, :item_id, 
    :media_content_type, :media_file_name, :media_file_size, :media,
    :user_id, :created_at
    
  belongs_to :user
  belongs_to :item
  has_many :comments, :as => :place
  
  has_attached_file :media
  validates_attachment_presence :media
end
