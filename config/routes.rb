Rails.application.routes.draw do

  resources :picks, only: [:edit]

  root "pages#home"
end
