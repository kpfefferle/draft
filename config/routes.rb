Rails.application.routes.draw do

  resources :picks, only: [:edit, :update]

  root "pages#home"
end
