class Medium < ActiveRecord::Base
  attr_accessible :hide, :item_id,
    :media_content_type, :media_file_name, :media_file_size, :media,
    :user_id, :created_at
    
  belongs_to :user
  belongs_to :item
  has_many :comments, :as => :place
  
  scope :newest, order('created_at DESC').where(item_id: Item.not_admin.map(&:id))
  
  has_attached_file :media
  validates_attachment_presence :media
  
  def name 
    item.name
  end
  
  
  #google docs viewer?
  #gdata gem?
  
end
