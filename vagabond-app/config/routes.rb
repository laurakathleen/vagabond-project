Rails.application.routes.draw do
  root to: 'users#index'


  get '/users', to: 'users#index', as: 'users'
  get '/users/new', to: 'users#new', as: 'new_user'
end
