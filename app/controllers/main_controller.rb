class MainController < ApplicationController
    before_action :set_github_api

    def index
        output_Api = @GitHubApi.get_repositories(params[:search])
        render json: output_Api.body, status: :ok
    end

    def show
        resultados = @GitHubApi.get_repository(params[:owner], params[:repo])
        render json: resultados.body, status: :ok
    end

   def set_github_api
    @GitHubApi = GitHubApi.new
   end
end