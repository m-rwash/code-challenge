Rails.application.routes.draw do

  root 'users#index'

  get 'access/login', to: 'access#login', as: 'login'
  post 'access/attempt_login', to: 'access#attempt_login', as: 'attempt_login'
  get 'access/logout', to: 'access#logout', as: 'logout'

  resources :plus_one, only: :create
  #get 'plus_one'
  resources :skills, only: [:show, :create, :new]

  resources :users, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
