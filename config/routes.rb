Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
  end
  root to: 'homes#top'
  #get 'books' => 'books#index'
  get 'home/about' => 'homes#about'

end
