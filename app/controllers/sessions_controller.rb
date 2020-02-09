class SessionsController < ApplicationController
  def new
  end

  def create 
    if params[:name].empty? || params[:name] == nil
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to sessions_path
    end 
  end 

  def destroy
    session.clear
    redirect_to new_session_path
  end 
end
