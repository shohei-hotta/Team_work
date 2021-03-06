Rails.application.routes.draw do
  root to: "blogs#index"
  resources :blogs
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
end
