Rails.application.routes.draw do
  get 'errors/not_found'

  get 'errors/internal_server_error'

  post '/posts', to: 'posts#create'

  get 'posts/show/:id', to: 'posts#show', as: 'post'

  get 'posts/new'

  get 'posts/:post_id/edit', to:'posts#edit', as: 'edit_post'
  patch 'posts/show/:post_id', to: 'posts#update'
  delete 'posts/show/:post_id', to: 'posts#destroy'

  get 'posts/show/:id', to: 'comments#new'
  post 'posts/show/:id', to: 'comments#create', as: 'new_comment'
  get 'posts/show/:id', to: 'comments#show'
  get 'posts/show/:id', to: 'comments#edit', as: 'edit_comment'
  patch 'posts/show/:post_id', to: 'comments#update'
  
  

  get 'cities', to: 'cities#index'


  get 'cities/:city_url_display/approve', to: 'cities#approve', as: 'city_approve'
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


  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
end
