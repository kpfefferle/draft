Rails.application.routes.draw do

  resources :picks, only: [:index, :edit, :update]
  resources :players, only: [:index]
  resources :teams, only: [:index]

  root "pages#home"
end
