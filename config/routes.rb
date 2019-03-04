Rails.application.routes.draw do
  get 'tracks/index'

  get 'tracks/show'

  get 'artists/index'

  get 'artists/show'

  resources :purples
  resources :oranges
  resources :yellows
  resources :greens
  resources :blues
  resources :reds

  get '/artists', to: 'artists#index'
  get '/artists/:id', to:'artists#show', as: 'artist'

  get '/tracks', to: 'tracks#index'
  get '/artists/:id', to:'tracks#show', as: 'track'

 get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  get 'home/index'
  root 'home#index'
  resources:home
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
