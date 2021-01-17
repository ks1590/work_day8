Rails.application.routes.draw do
  root "users#new"
  resources :blogs
  resources :users
  resources :sessions
end
