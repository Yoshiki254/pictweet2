Rails.application.routes.draw do

  root to: "tweets#index"
  devise_for :users
  resources :tweets do
  	resources :comments, only: [:create]
  end

  resources :users, only: [:show]

end
