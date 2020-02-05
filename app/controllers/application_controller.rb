class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :require_login


  def current_user
    session[:name]
  end
 
  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
