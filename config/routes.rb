Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :users, only: [:index]

  # resources入れる
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
