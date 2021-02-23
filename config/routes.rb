Rails.application.routes.draw do
  get 'city/show'
  resources :gossip
  resources :user
  resources :city
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
end
