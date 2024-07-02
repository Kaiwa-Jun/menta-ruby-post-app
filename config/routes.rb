Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: [:new]
  resources :sessions, only: [:new]
end
