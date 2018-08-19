module ApplicationHelper
  def user_roles(user)
    user.roles.map(&:name).join(',').titleize
  end  

  def owner_roles(owner)
    owner.roles.map(&:name).join(',').titleize
  end  
end
