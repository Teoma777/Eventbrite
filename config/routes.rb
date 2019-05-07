Rails.application.routes.draw do
  devise_for :users
  get 'users/Property'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 
  root 'events#index'
  resources :users
  resources :events
  resources :attendances
end
