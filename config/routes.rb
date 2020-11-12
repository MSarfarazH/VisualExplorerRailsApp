Rails.application.routes.draw do

  resources :user_events, only: [:show, :index, :new, :create]
  resources :users, only: [:show, :index, :new, :create]
  resources :events, only: [:show, :index, :new, :create]
  resources :locations, only: [:index]

  root 'application#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
