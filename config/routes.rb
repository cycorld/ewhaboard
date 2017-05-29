Rails.application.routes.draw do
  get 'boards/index'

  get 'boards/show'

  mount RailsAdmin::Engine => '/boss', as: 'rails_admin'
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root 'posts#index'
  resources :posts
  resources :comments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
