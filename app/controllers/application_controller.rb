class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
    if current_user
      redirect_to (controller: 'sessions', action; 'show')
    end
  end

  def current_user
    session[:name]
  end
end
