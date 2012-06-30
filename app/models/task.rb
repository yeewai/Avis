class Task < ActiveRecord::Base
  # These are the tasks for the to do lists. Tasks have: 
  # an owner which is the person the task is assigned to, 
  # kind would be like error, chore, suggestion, task; 
  # project (which needs to be renamed) is what the task is for
  # state would be orphaned, assigned, started, finished, accepted/rejected
  # task is the title of the task
  # comment is a description of the task
  # The comment's owner will the the requestor
  #
  # Only an admin or the requestor can delete a task
  # Anyone can accept/reject a task so long as they're not the owner
  # If a task is rejected, the owner can restart the task or orphan it
  # Owners can toggle the middle states
  # Admins can toggle all the states
  #
  # Ideally, you'd be able to view all of a user's tasks, all tasks in a project,
  # all tasks in a file. For all tasks in a project, it'd be nice if you could 
  # get all the tasks of the project's children too. Breadth first. 
  
  attr_accessible :kind, :owner, :project, :state, :task
  
  belongs_to :owner_id
  belongs_to :project_id, :polymorphic => true

  has_one :comment, :as => :place
  
  validates_presence_of :task
end
