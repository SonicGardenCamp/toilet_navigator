Rails.application.routes.draw do
  devise_for :users
  
  root 'top#index'
  resources :toilet_places, only: %i[show new create edit update destroy] do
    resources :reviews, only: %i[new create edit update destroy]
  end
end
