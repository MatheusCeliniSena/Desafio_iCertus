class FavoriteController < ApplicationController
  def index
    @favorites = Favorite.all
    render json: @favorites, status: :ok
  end

  def new
    @rep = @GitHubApi.get_repository(params[:owner], params[:repo])
    @favorite = Favorite.new(repo_params(@rep.body))
    @favorite.save
    render json: {success: "Favorito salvo com sucesso"}, status: :ok
  end

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render json: @favorite, status: :ok
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    render json: {success: "Favorito apagado com sucesso!"}, status: :see_other
  end

  def repo_params(content)
    resposta_Output = JSON.parse(content)
    {
        id: resposta_Output['id'],
        name: resposta_Output['name'],
        description: resposta_Output['description'],
        owner: resposta_Output['owner']['login'],
        stars: resposta_Output['stargazers_count'],
        language: resposta_Output['language'],
        forks: resposta_Output['forks_count'],
        clone_url: resposta_Output['clone_url'],
        url: resposta_Output['html_url']
    }
  end
end
