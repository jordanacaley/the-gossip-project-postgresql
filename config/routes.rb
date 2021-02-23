Rails.application.routes.draw do
  resources :gossip
  resources :user
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
end
