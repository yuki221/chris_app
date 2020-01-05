Rails.application.routes.draw do
  root 'pages#home'
  get 'sessions/new'
  get 'users/new'
  get 'pages/home'
  get 'pages/help'
  get 'pages/about'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
