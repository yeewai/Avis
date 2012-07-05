class User < ActiveRecord::Base
  # This is the user. Yay. Users can have/make files, comments, statuses and tasks. 
  # Their profile info will be displayed on the main site. 
  #
  # Admin users (chanted and I) are the only ones able to add/demote/promote users
  # Role: 0-banned, 1-retired, 2-regular, 3-admin
  attr_accessible :bio, :birthday, :colour, :contact, :email, :gmt, :name, :notify, 
  :position, :quote, :residence, :role, :status, :theme, :username, :website, :zodiac, 
  :password, :password_confirmation #does not even need status. Please remove
  
  #Password Stuffs
  has_secure_password
  
  #Validations
  validates_presence_of :username;
  has_many :comments
  has_many :tasks
  # has_many :statuses
  # has_many :files
  
  #User roles
  attr_accessible :ROLE_BANNED   => 0,
  :ROLE_RETIRED  => 1,
  :ROLE_REGULAR  => 2,
  :ROLE_ADMIN    => 3
  
end
