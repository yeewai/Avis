class Item < ActiveRecord::Base
  attr_accessible :hide, :name, :project_id, :status
  
  belongs_to :project
  #has_many :files
  
  validates_presence_of :name
end
