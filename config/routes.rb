Rails.application.routes.draw do
<<<<<<< HEAD
  get '/order', to: 'order#show'
  post '/order', to: 'order#create'
=======
>>>>>>> 9378f714c9debaaa044007bbc0021373dc7e8f4f
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show, :index]
  resources :orders, only: [:create, :update]
end
