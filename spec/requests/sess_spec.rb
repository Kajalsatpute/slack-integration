require 'rails_helper'

RSpec.describe "Sesses", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/sess/create"
      expect(response).to have_http_status(:success)
    end
  end

end
