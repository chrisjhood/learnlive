class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :not_facebook_user

  def not_facebook_user
    current_user.provider.blank?
  end

  def require_login
  	@user = User.find_by_id(session[:user_id])
	redirect_to root_url, notice: 'Please login.' unless @user.present?
  end

  def require_authorization
  	redirect_to root_url, notice: "You are not authorized." unless session[:user_id]==params[:id].to_i
  end

  def require_admin
  	@user = User.find_by_id(session[:user_id])
  	redirect_to root_url, notice: "This is a restricted area." unless @user.role == "Admin"
  end

end
