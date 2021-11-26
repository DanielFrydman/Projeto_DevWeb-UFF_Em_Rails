Rails.application.routes.draw do
  root 'sessions#login'

  resources :admins

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
end
