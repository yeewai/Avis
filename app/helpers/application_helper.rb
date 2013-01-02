module ApplicationHelper
  def authorize_edit(user)
    current_user.role == User::ROLE_ADMIN || current_user == user
  end
  
  def whos_online
    onlineUsers = Array.new
    User.current.each do |user|
      if (user.last_online && user.last_online > Time.now - 5.minutes)
        onlineUsers.push user
      end
    end
    return onlineUsers
  end
end
