class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :not_facebook_user

  def not_facebook_user
    current_user.provider.blank?
  end
end
