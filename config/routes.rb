Rails.application.routes.draw do
  resources :searches
  resources :users
  resources :collections
  resources :tweets
  post '/search', to: "search#new"
  post '/user_collections', to: "collections#user_collections"
  post '/collection_tweets', to: "tweets#collection_tweets"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
