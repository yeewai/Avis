module ApplicationHelper
  def authorize_edit(user)
    current_user.role == User::ROLE_ADMIN || current_user == user
  end
end
