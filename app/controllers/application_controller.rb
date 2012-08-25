class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :not_facebook_user

  def not_facebook_user
    current_user.provider.blank?
  end

  def require_login
	redirect_to root_url, notice: 'Please login.' unless current_user
  end

	

  def require_admin
  		redirect_to root_url, notice: "This is a restricted area." unless current_user.role == "Admin"
  end

end
