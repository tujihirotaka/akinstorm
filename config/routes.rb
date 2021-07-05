Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  resources :users, :only => [:index, :show]
  root "users#index"
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
  get 'post/top' => 'posts#top'
end
