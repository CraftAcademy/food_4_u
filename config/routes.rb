Rails.application.routes.draw do
  get '/order', to: 'order#show'
  post '/order', to: 'order#create'
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show, :index]
end
