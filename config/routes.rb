Rails.application.routes.draw do
  root to: 'prototypes#index'
  resources :users, only: [:show]
    resources :prototypes do
      resources :comments, only: [:create]
    end
  devise_for :users
end
