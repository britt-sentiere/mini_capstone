Rails.application.routes.draw do
 namespace :api do
  get '/products' => 'products#index'
  post '/products' => 'products#create'
  get '/products/:id' => 'products#show'
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/order' => 'orders#index'
  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'
end 
end
