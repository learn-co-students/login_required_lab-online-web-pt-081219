class SessionsController < ApplicationController

  def create
    require_login
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end
end
