Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :books, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end