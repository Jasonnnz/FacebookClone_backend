Rails.application.routes.draw do
  post '/signup', to: 'users#signup' 
  post '/login', to: 'users#login'
  get '/me', to: 'users#me'

  resources :friendships
  resources :likes
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
