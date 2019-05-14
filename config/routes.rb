Rails.application.routes.draw do
  root 'tweets#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweets do
    resource :favorites, only: %i[ create destroy]
    resource :comments, only: %i[ create destroy]
  end
  resources :users do
    resource :relationships, only: %i[create destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
end
