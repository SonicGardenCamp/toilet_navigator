Rails.application.routes.draw do
  devise_for :users
  
  root 'top#index'
  resources :toilet_places do
    resources :reviews, only: %i[new create edit update destroy]
  end
end
