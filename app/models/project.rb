class Project < ActiveRecord::Base
  # Project is the overarching project and its subcategories (Pencils, inks, colours...)
  # Projects can have tasks assigned to them and comments, but they should not be able to 
  # have files. They are purely for indexing purposes. 
  # 
  # Variety should be comics, development, and web stuff
  # Dev would have the idea pot and resources
  # Web stuff would have AVIS and the main site
  attr_accessible :description, :name, :parent_id, :status, :variety
  
  has_many :comments, :as => "place"
  has_many :categories, :class_name => "Project", :foreign_key => "parent_id"
  has_many :tasks, :as => "project"
  has_many :items
  
  belongs_to :parent, :class_name => "Project"
  
  #Project Statuses
  IN_PROGRESS = 0
  HIATUS = 1
  COMPLETED  = 2
  
  def self.create_comic(name, desc)
    @comic = Project.create(:name => name, :description => desc, :parent_id => 0,
          :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Notes", 
        :description => "Feel free to post random files pertaining to the comic here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Scripts", :description => "Scripts for the comic go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Character Designs", 
        :description => "Designs for characters and costumes go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Storyboards", 
        :description => "Storyboards and rough rough sketches for the pencils go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")    
    @comic.categories.create(:name => "Pencils", :description => "Pencils go here.",
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Inks", :description => "Inked pages go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Colours", :description => "Coloured pages go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic.categories.create(:name => "Letters", :description => "Lettered and final pages go here.", 
        :status => Project::IN_PROGRESS, :variety => "Comic")
    @comic
  end
end
