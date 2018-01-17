Rails.application.routes.draw do
  get '/charges', to: 'charges#show'
  post '/charges', to: 'charges#create'
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show, :index]
  resources :orders, only: [:create, :update]
end
