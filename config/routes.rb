Rails.application.routes.draw do
  resources :user_shows
  resources :show_platforms
  resources :reviews
  resources :platforms
  resources :shows
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
