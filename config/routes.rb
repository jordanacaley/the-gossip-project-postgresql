Rails.application.routes.draw do
  get 'user/:id', to: 'user#show', as: 'user'
  get 'gossip/:id', to: 'gossip#show', as: 'gossip'
  get 'welcome/:first_name', to: 'welcome#show', as: 'welcome'
  get '/contact', to: 'contact#index'
  get '/team', to: 'team#index'
end
