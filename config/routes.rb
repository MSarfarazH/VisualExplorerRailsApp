Rails.application.routes.draw do

  resources :user_events, only: [:show, :index, :new, :create]
  resources :users, only: [:show, :index, :new, :create]
  resources :events, only: [:show, :index, :new, :create]
  resources :locations, only: [:index]

  get '/sign_in', to: 'sessions#sign_in'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
