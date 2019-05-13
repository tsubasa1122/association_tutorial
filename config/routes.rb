Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  root 'tweets#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tweets do
    resource :favorites, only: %i[ create destroy]
  end
  resources :users
end
