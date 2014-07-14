Rails.application.routes.draw do

  resources :picks, only: [:edit, :update]
  resources :players, only: [:index]

  root "pages#home"
end
