require 'rails_helper'

RSpec.describe SecretsController, type: :controller do

  describe "GET #require_login" do
    it "returns http success" do
      get :require_login
      expect(response).to have_http_status(:success)
    end
  end

end
