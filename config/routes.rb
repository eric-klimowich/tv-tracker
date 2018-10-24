Rails.application.routes.draw do
  resources :user_shows
  resources :show_platforms
  resources :reviews
  resources :platforms
  resources :shows
  resources :users

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy', as: 'logout'
  get '/home', to: 'user_shows#index', as: 'home'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
