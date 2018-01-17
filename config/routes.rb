Rails.application.routes.draw do
  get '/charge', to: 'charge#show'
  post '/charge', to: 'charge#create'
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show, :index]
end
