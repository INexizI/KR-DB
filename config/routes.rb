Rails.application.routes.draw do
  root to: 'home#index'

  resources :calcs, only: :index
  resources :chars, only: %i[ index show ]
  resources :roles, only: %i[ index show ]
  resources :perks, only: %i[ index show ]
  resources :stats, only: %i[ index show ]
  resources :skills, only: %i[ index show ]
  resources :gears, only: %i[ index show ]
  resources :enchants, only: %i[ index show ]
  resources :runes, only: %i[ index show ]

  get :search, controller: :search
  get 'offline', to: 'home#offline', as: :offline
end
