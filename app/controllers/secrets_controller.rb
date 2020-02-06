class SecretsController < ApplicationController
    before_action :require_login

    def show
    end

    def secret
    end

    def require_login
        flash[:message] = "Login required"
        redirect_to new_sessions_path unless current_user
    end

end
