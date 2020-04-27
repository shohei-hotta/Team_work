Rails.application.routes.draw do
  resources :users
  get 'blogs/new'
  get 'blogs/edit'
  get 'blogs/show'
  get 'blogs/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
