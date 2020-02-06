class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name].nil? && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to controller: 'secrets', action: 'show'
        else
            redirect_to new_sessions_path
        end
    end

    def destroy
        session.delete :name
        redirect_to new_sessions_path
    end

end
