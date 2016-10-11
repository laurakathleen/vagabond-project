Rails.application.routes.draw do
  post '/posts', to: 'posts#create'

  get 'posts/show/:id', to: 'posts#show', as: 'post'

  get 'posts/new'

  get 'posts/:post_id/edit', to:'posts#edit', as: 'edit_post'
  patch 'posts/show/:post_id', to: 'posts#update'
  delete 'posts/show/:post_id', to: 'posts#destroy'

  get 'cities', to: 'cities#index'

  post 'cities', to: 'cities#create'
  get 'cities/new'
  get 'cities/:city_url_display', to: 'cities#show', as: 'city'
  get 'cities/:city_url_display/page/:page', to: 'cities#show'


  root to: 'users#index'



  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to:'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
