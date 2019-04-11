Rails.application.routes.draw do
  resources :searches
  resources :users
  resources :collections
  resources :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
