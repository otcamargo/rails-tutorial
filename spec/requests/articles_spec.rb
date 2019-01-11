require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /articles" do
    it "Tries to post article without authenticating" do
      get new_article_path
      expect(response).to_not have_http_status(200)
    end
    
    it "Tries to post article authenticating" do
      get new_article_path
      expect(response).to have_http_status(200)
    end
  end
end
