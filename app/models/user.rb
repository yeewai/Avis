class User < ActiveRecord::Base
  # This is the user. Yay. Users can have/make files, comments, statuses and tasks. 
  # Their profile info will be displayed on the main site. 
  #
  # Admin users (chanted and I) are the only ones able to add/demote/promote users
  attr_accessible :bio, :birthday, :colour, :contact, :email, :gmt, :name, :notify, 
  :position, :quote, :residence, :role, :status, :theme, :username, :website, :zodiac, 
  :password, :password_confirmation, :avatar, :last_online, :last_online_at #does not even need status. Please remove
  
  default_scope :order => "role DESC"
  
  
  #Password Stuffs
  has_secure_password
  
  #Token to store in cookie
  before_create { generate_token(:token) }
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  #Validations
  validates_presence_of :username;
  has_many :comments
  has_many :tasks
  has_many :taskstodo, :class_name => Task, :foreign_key => :owner_id
  has_many :statuses
  has_many :media
  has_many :item
  
  #Status Updates
  def late_status?
    status ||= statuses.last
    (status != nil && status.start_late_notice < Time.now) || (status==nil && created_at < Time.now - 14.days)
  end
  
  #avatar stuffs
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
  
  has_attached_file :avatar, options
  validates_attachment_size :avatar, :less_than => 2.megabytes
  validates_attachment_content_type :avatar, :content_type=>['image/jpeg', 'image/png', 'image/gif']
  
  #User roles
  ROLE_BANNED   = 0
  ROLE_RETIRED  = 1
  ROLE_REGULAR  = 2
  ROLE_ADMIN    = 3
  ROLE_PENDING  = 4
  
  scope :current, where(role: [ROLE_REGULAR, ROLE_ADMIN])
end
