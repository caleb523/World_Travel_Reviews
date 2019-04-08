Rails.application.routes.draw do
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',     to: 'users#show',       via: 'get'
  devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
