Rails.application.routes.draw do
  get 'toilet_places/new'
  get 'toilet_places/edit'
  devise_for :users
  
  root 'top#index'
  resources :toilet_places, only: %i[new create edit update destroy]
end
