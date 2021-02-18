Rails.application.routes.draw do
  get 'gossip/:id', to: 'gossip#show', as: 'gossip'
  get 'welcome/:first_name', to: 'welcome#show', as: 'welcome'
  get '/contact', to: 'contact#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/team', to: 'team#index'
end
