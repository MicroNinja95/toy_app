Rails.application.routes.draw do
  resources :users
  resources :microposts
  resources :user
  root 'users#index'
end
