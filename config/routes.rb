Rails.application.routes.draw do
  root to: 'home#index'

  resources :calcs, only: :index
  resources :chars, only: %i[ index show ]
  resources :roles, only: :index
  resources :perks, only: :index
  resources :stats, only: :index
  resources :skills, only: :index
  resources :gears, only: :index
  resources :enchants, only: :index
  resources :runes, only: :index

  get :search, controller: :search
  get 'offline', to: 'home#offline', as: :offline
end
