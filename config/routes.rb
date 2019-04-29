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
  root to: 'pages#home'
  resources :cities do
  	resources :reviews, except: [:show, :index]
  end
    # teaching evaluation routes
  get 'reviews/ask', to: 'reviews#ask', as: 'ask_review'
  post 'reviews/ask', to: 'reviews#check_answer'
  get 'reviews', to: 'reviews#index', as: 'reviews'
  post 'reviews', to: 'reviews#create'
  get 'reviews/new', to: 'reviews#new', as: 'new_review'
  get 'reviews/:id/edit', to: 'reviews#edit', as: 'edit_review'
  get 'reviews/lucky', to: 'reviews#lucky', as: 'lucky_review'
  get 'reviews/:id', to: 'reviews#show', as: 'review'
  patch 'reviews/:id', to: 'reviews#update'
  put 'reviews/:id', to: 'reviews#update'
  delete 'reviews/:id', to: 'reviews#destroy'
  get 'home', to: 'pages#home', as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
