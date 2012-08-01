module UsersHelper
  def translate_role(role)
    case role
      when User::ROLE_PENDING
        "Pending"
      when User::ROLE_REGULAR
        "Regular"
      when User::ROLE_ADMIN
        "Admin"
      when User::ROLE_RETIRED
        "Retired"
      when User::ROLE_BANNED
        "Banned"
    end
  end
end
