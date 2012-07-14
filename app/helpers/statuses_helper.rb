module StatusesHelper
  def li_id(statuses)
    if statuses.count < 1
      "none"
    elsif statuses.last.start_late_notice.past?
      "late"
    elsif statuses.last.hiatus
      "hiatus"
    else
      "ok"
    end
  end
  
  
end
