class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def index
    @current_user = current_user
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_url
    else
      session[:name] = params[:name]
      redirect_to sessions_url
    end
  end

  def destroy
    session.delete :name
    redirect_to new_session_url
  end
end
