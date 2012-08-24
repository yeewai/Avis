module TasksHelper
  def task_type_image(kind)
    case kind
      when Task::TASK_TASK
        "task-task.png"
      when Task::TASK_CHORE
        "task-chore.png"
      when Task::TASK_ERROR
        "task-error.png"
      when Task::TASK_SUGGESTION
        "task-idea.png"
    end
  end
  
  def task_type(kind)
    case kind
      when Task::TASK_TASK
        "task"
      when Task::TASK_CHORE
        "chore"
      when Task::TASK_ERROR
        "error"
      when Task::TASK_SUGGESTION
        "suggestion"
    end
  end
  
  def task_status(status)
    case status
      when Task::TASK_ORPHANED
        "status-red.png"
      when Task::TASK_REJECTED
        "status-red.png"
      when Task::TASK_STARTED
        "status-amber.png"
      when Task::TASK_ASSIGNED
        "status-amber.png"
      when Task::TASK_FINISHED
        "status-green.png"
      when Task::TASK_ACCEPTED
        "status-teal.png"
    end
  end
end
