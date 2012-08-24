class Item < ActiveRecord::Base
  attr_accessible :hide, :name, :project_id, :status, :description
  
  belongs_to :project
  has_many :media
  has_many :tasks, :as => :project
  has_many :comments, :as => :place
  
  validates_presence_of :name
  
  #Item Statuses
   NOT_READY    = 0
   EDITING      = 1
   READY        = 2
   IMPLEMENTED  = 3
end
