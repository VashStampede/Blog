module ApplicationHelper
  def resource_name
    :user
 #   :admin
  end

#  -----
  def resource
    @resource ||= User.new
 #   @resource ||= Admin.new
  end


  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
