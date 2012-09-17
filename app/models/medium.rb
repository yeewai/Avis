class Medium < ActiveRecord::Base
  attr_accessible :hide, :item_id,
    :media_content_type, :media_file_name, :media_file_size, :media,
    :user_id, :created_at
    
  belongs_to :user
  belongs_to :item
  has_many :comments, :as => :place
  
  scope :newest, order('created_at DESC').where(item_id: Item.not_admin.map(&:id))
  
  # s3 Credentials
  options = if Rails.env.production? 
    {:storage => :s3,
     :bucket => ENV['S3_BUCKET_NAME'],
     :s3_credentials => {
       :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
       :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']}
     }
  else
     {}  
  end
    
  has_attached_file :media, options
  validates_attachment_presence :media
  
  def name 
    item.name
  end
  
  
  #google docs viewer?
  #gdata gem?
  
end
