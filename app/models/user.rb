class User < ActiveRecord::Base
  # This is the user. Yay. Users can have/make files, comments, statuses and tasks. 
  # Their profile info will be displayed on the main site. 
  #
  # Admin users (chanted and I) are the only ones able to add/demote/promote users
  # Role: 0-banned, 1-retired, 2-regular, 3-admin
  attr_accessible :bio, :birthday, :colour, :contact, :email, :gmt, :name, :notify, 
  :position, :quote, :residence, :role, :status, :theme, :username, :website, :zodiac, 
  :password, :password_confirmation, :avatar #does not even need status. Please remove
  
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
  has_many :statuses
  has_many :media
  
  #avatar stuffs
  has_attached_file :avatar
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
