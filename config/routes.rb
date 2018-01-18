Rails.application.routes.draw do
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show, :index]
  resources :charges, only: [:index, :create]
end
