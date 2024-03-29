Rails.application.routes.draw do

  resources :users, only: [:show, :index, :new, :create]
  resources :events, only: [:show, :index]
  resources :locations, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
