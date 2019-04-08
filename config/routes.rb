Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'home', to: 'pages#home', as: 'home'
  get 'city', to: 'pages#city', as: 'city'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
