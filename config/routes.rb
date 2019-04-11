Rails.application.routes.draw do
  resources :searches
  resources :users
  resources :collections
  resources :tweets
  post '/search', to: "search#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
