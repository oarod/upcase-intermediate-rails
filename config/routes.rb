Rails.application.routes.draw do
  root to: 'homes#show'

  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :shouts, only: [:show, :create]
  resources :users, only: [:show, :new, :create]
end
