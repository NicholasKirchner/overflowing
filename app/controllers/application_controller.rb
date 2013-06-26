class ApplicationController < ActionController::Base
  protect_from_forgery #what does this do?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end

  helper_method :current_user #make available for views!
end
