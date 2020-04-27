Rails.application.routes.draw do
  resources :users
  root to: "blogs#index"
  resources :blogs
end
