class Item < ActiveRecord::Base
  attr_accessible :hide, :name, :project_id, :status
  
  belongs_to :project
  has_many :media
  has_many :tasks, :as => :project
  
  validates_presence_of :name
end
