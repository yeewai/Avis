class Comment < ActiveRecord::Base
  # Comments have a commentor, the comment itself, and the file/project/??? 
  # that the comment's put in (the place)
  attr_accessible :content, :place_id, :user_id, :place_type
  
  belongs_to :place, :polymorphic => true
  belongs_to :user
  
  scope :newest, order('created_at DESC').where("place_id != #{Project.find_by_name('Admin').id}")
  
  validates_presence_of :content;

end
