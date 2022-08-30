require 'rails_helper'

RSpec.describe MainController, type: :controller do 
    it "should return all repositories" do
        get :index, params: {search: 'ruby'}
        expect(response).to have_http_status(:ok)
    end


    it "should get one repository" do
        get :show, params: {owner: 'rails', repo: 'rails'}
        expect(response).to have_http_status(:ok)
    end
end