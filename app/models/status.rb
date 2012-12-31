class Status < ActiveRecord::Base
  attr_accessible :future, :hiatus, :past, :start_late_notice, :user_id
  
  def self.checkStatuses #Refactor this when have time
    statuscheck = Status.find_by_past("STATUSCHKTHANG")
    
    if (statuscheck.updated_at < Time.now - 2.days)
      lateUsers = Array.new
      User.current.each do |user|
        if (user.late_status? && user.email)
          lateUsers.push user.email
        end
      end
    
      if (lateUsers.length > 0)
        CPMailer.late_status_email(lateUsers).deliver
      end
    
      statuscheck.updated_at = Time.now
      statuscheck.save
    end
  end
end
