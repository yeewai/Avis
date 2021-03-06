class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
    @current_user ||=User.find_by_token!(cookies[:user_token]) if cookies[:user_token]
  end
  helper_method :current_user
  
  def authorize 
    current_user.last_online = Time.now
    current_user.last_online_at = request.fullpath
    current_user.save
    Status.checkStatuses #This is so cheating. =.=
    redirect_to login_url alert: "Not logged in!" if current_user.nil?
  end
  
  def authorize_admin 
    render :template => "sessions/admin" if current_user.role != User::ROLE_ADMIN
  end
  
  def authorize_edit(user)
    current_user.role == User::ROLE_ADMIN || current_user == user
  end

end
