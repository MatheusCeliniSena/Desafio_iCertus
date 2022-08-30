class MainController < ApplicationController
    before_action :set_github_api

    def index
        output_Api = @GitHubApi.get_repositories(params[:search])
    end

    def show
        resultados = @GitHubApi.get_repository(params[:owner], params[:repo])
        render json: resultados.body, status: :ok
    end

   def set_github_api
    @GitHubApi = GitHubApi.new
   end
end