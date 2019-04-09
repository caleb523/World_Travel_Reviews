Rails.application.routes.draw do
  get '/cities/new', to: 'cities#new', as: 'new'
  get '/cities/create', to: 'cities#create', as: 'create'
  post '/cities', to: 'cities#create'
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',     to: 'users#show',       via: 'get'
  match '/cities',   to: 'cities#index',   via: 'get'
  match '/cities/:id',     to: 'cities#show',       via: 'get'
  devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]
  resources :cities, :only =>[:show]
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
