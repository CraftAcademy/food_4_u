Rails.application.routes.draw do
  root controller: :landing, action: :index
  resources :restaurants, only: [:show, :index]
end
