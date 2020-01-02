Rails.application.routes.draw do
  get 'users/new'
  get 'pages/home'
  get 'pages/help'
  get 'pages/about'
  post '/signup',  to: 'users#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
