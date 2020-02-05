class SecretsController < ApplicationController
    before_action :require_login

    def show
        @user = current_user
        @secret = "Secret Message"
    end

    private
    def require_login
        redirect_to login_path unless session.include? :name
    end

end
