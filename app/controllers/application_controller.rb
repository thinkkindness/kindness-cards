class ApplicationController < ActionController::Base
  protect_from_forgery

  # Redirect root if not authorized
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

end
