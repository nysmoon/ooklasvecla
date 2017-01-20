class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper

  
  def auth_redirect
    unless logged_in? && current_user.role_id == 1
      render :file => "#{Rails.root}/public/401.html", :status => 401
    end
  end
      
end
