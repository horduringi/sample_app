class ApplicationController < ActionController::Base
  before_filter :authenticate_user!

  # Force signout to prefent CSRF attacks
  def handle_unverified_request
  	sign_out
  	super
  end
end
