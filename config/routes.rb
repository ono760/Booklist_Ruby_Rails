Rails.application.routes.draw do
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
