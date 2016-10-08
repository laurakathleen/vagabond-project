Rails.application.routes.draw do
  post '/posts', to: 'posts#create'

  get 'posts/show/:id', to: 'posts#show', as: 'post'

  get 'posts/new'

  get 'posts/:post_id/edit', to:'posts#edit', as: 'edit_post'
  patch 'posts/show/:post_id', to: 'posts#update'
  delete 'posts/show/:post_id', to: 'posts#destroy'

  get 'cities/index'

  get 'cities/show/:id', to: 'cities#show', as: 'city'

  get 'cities/new'

  root to: 'users#index'


  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to:'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
