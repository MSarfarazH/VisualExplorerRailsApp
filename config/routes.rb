Rails.application.routes.draw do
  get 'events/show'
  get 'events/index'
  get 'locations/index'
  resources :events, only: [:show, :index]
  resources :locations, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
