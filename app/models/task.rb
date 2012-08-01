class Task < ActiveRecord::Base
  # These are the tasks for the to do lists. Tasks have: 
  # an owner which is the person the task is assigned to, 
  # kind would be like error, chore, suggestion, task; 
  # project (which needs to be renamed) is what the task is for
  # state would be orphaned, assigned, started, finished, accepted/rejected
  # task is the title of the task
  # description is a description of the task
  # The user_id will the the requestor
  #
  # Only an admin or the requestor can delete a task
  # Anyone can accept/reject a task so long as they're not the owner
  # If a task is rejected, anyone can restart the task or orphan it
  # Owners can toggle the middle states
  # Admins can toggle all the states
  #
  # Ideally, you'd be able to view all of a user's tasks, all tasks in a project,
  # all tasks in a file. For all tasks in a project, it'd be nice if you could 
  # get all the tasks of the project's children too. Breadth first. 
  
  attr_accessible :description, :kind, :owner_id, :project_id, :project_type, 
    :state, :task, :user_id
  
  belongs_to :project, :polymorphic => true
  belongs_to :user
  belongs_to :owner, :class_name => "User"
  
  validates_presence_of :task, :description 
  
  #Task States
  TASK_ORPHANED = 0
  TASK_ASSIGNED = 1
  TASK_STARTED  = 2
  TASK_FINISHED = 3
  TASK_REJECTED = 4
  TASK_ACCEPTED = 5
  
  #Task Kinds
  TASK_TASK   = 0
  TASK_CHORE  = 1
  TASK_ERROR  = 2
  TASK_SUGGESTION   = 3
end
