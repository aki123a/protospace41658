Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: [:create, :new, :show, :update, :edit, :destroy]do
  resources :comments, only: :create
  end
  resources :users, only: :show
end
