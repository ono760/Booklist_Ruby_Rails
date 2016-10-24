Rails.application.routes.draw do
  #root 'home#index' tells Rails to map requests to the root of the application to the home controller's index action and 
  #get 'home/index' tells Rails to map requests to http://localhost:3000/home/index to the home controller's index action.
  
  get 'home/index'
  resources :books
  resources :users
  root 'home#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users' => 'users#index'

  get '/search' => "search#index"

end
