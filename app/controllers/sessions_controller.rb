class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:name] && params[:name] != ""
        session[:name] = params[:name]
        redirect_to '/'
        else
        redirect_to '/login'
        end
    end
    
    def show
        @user = current_user
    end

    def destroy
        session.delete :name
    end
    
end
