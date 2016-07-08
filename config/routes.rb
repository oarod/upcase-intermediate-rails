Rails.application.routes.draw do
  root to: 'homes#show'

  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :shouts, only: [:show]
  resources :photo_shouts, only: [:create]
  resources :text_shouts, only: [:create]
  resources :users, only: [:index, :show, :new, :create] do
    post 'follow' => 'follows#create'
    delete 'follow' => 'follows#destroy'
  end
end
