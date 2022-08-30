class MainController < ApplicationController
    before_action :set_github_api

    def index
        output_Api = @GitHubApi.get_repositories(params[:search])
        langs = ['ruby','python','c#','java','javascript']

        if langs.include?(output_Api)
            render json: output_Api.body, status: :ok
        else
            render json: {errors: "tente buscar por ruby, python, c#, java ou javascript"}, status: :ok
        end
    end

    def show
        resultados = @GitHubApi.get_repository(params[:owner], params[:repo])
        render json: resultados.body, status: :ok
    end

   def set_github_api
    @GitHubApi = GitHubApi.new
   end
end