Rails.application.routes.draw do

  get '/' => 'users#index'
  
  post '/make_post' => 'wallposts#create'
  

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/logout' => 'sessions#destroy'
  get '/login'	=> 'sessions#new'
  post '/login' => 'sessions#create'  

end
