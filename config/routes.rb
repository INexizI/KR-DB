Rails.application.routes.draw do
  root to: 'home#index'

  resources :calcs
  resources :chars
  resources :roles
  resources :perks
  resources :stats
  resources :skills
  resources :gears
  resources :enchants
  resources :runes, only: :index

  get :search, controller: :search
end
