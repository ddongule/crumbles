module ApplicationHelper
  def user_roles(user)
    user.roles.map(&:name).join(',').titleize
  end
  
end
