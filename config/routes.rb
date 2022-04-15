Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    
    resources :post_coments, only: [:create, :destroy]
    
  end
  
  resources :users, only: [:show, :edit, :update]

  root to: 'homes#top'

  get '/homes/about' => 'homes#about', as: 'about'

end
