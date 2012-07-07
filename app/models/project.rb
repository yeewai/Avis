class Project < ActiveRecord::Base
  # Project is the overarching project and its subcategories (Pencils, inks, colours...)
  # Projects can have tasks assigned to them and comments, but they should not be able to 
  # have files. They are purely for indexing purposes. 
  # 
  # Root projects should be comics, development, and web stuff
  # Dev would have the idea pot and resources
  # Web stuff would have AVIS and the main site
  attr_accessible :description, :name, :parent_id, :status, :variety
  
  has_many :comments, :as => "place"
  has_many :categories, :class_name => "Project", :foreign_key => "parent_id"
  has_many :tasks
  
  belongs_to :parent, :class_name => "Project"
end
