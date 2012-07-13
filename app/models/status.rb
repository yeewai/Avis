class Status < ActiveRecord::Base
  attr_accessible :future, :hiatus, :past, :start_late_notice, :user_id
end
