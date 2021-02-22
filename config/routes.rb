Rails.application.routes.draw do
  resources :gossip
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
end
