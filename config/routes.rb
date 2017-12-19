Rails.application.routes.draw do

  resources :skills, only: [:show, :create, :new]

  resources :users, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
