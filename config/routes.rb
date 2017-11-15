Rails.application.routes.draw do
  resources :names
  resources :updated_users
  resources :microposts
  resources :users
  root 'users#index'
end
