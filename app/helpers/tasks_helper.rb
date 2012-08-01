module TasksHelper
  def task_type_image(kind)
    case kind
      when Task::TASK_TASK
        "status-red.png"
      when Task::TASK_CHORE
        "status-amber.png"
      when Task::TASK_ERROR
        "status-green.png"
      when Task::TASK_SUGGESTION
        "status-teal.png"
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
      when Task::TASK_TASK
        "status-red.png"
      when Task::TASK_CHORE
        "status-amber.png"
      when Task::TASK_ERROR
        "status-green.png"
      when Task::TASK_SUGGESTION
        "status-teal.png"
    end
  end
end
