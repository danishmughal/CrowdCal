class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  # Makes sure user is logged in 
  def require_login
    unless user_signed_in?
      flash[:error] = "You need to login before you can do that!"
      redirect_to root_path
    end
  end

end
