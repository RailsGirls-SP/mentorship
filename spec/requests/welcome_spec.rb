require 'rails_helper'

RSpec.describe "Welcome", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      get root_url

      expect(response).to be_successful
    end
  end
end
