Rails.application.routes.draw do

  root 'notes#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  # Defines the root path route ("/")
  # root "posts#index"

  resources :posts

end
