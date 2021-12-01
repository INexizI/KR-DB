Rails.application.routes.draw do
  root to: 'home#index'

  resources :calcs
  resources :chars, only: [:index, :show]
  resources :roles
  resources :perks
  resources :stats
  resources :skills, only: [:index, :show]
  resources :gears, only: [:index, :show]
  resources :enchants
  resources :runes, only: [:index, :show]

  get :search, controller: :search
  get 'offline', to: 'home#offline', as: :offline
end
