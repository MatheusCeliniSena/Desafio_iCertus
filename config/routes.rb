Rails.application.routes.draw do
  get '/favorites', to: 'favorite#index'
  get '/favorites/:id', to: 'favorite#show'
  delete '/favorites/:id', to: 'favorite#destroy'
  post '/favorites/:owner/:repo', to: 'favorite#new'

  get '/repositories/:search', to: 'main#index'
  get '/repository/:owner/:repo', to: 'main#show'
end
