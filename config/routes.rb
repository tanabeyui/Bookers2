Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/about', as: 'about'
  devise_for :users
  
  resources :books, only: [:create, :index, :show, :destroy]
end
