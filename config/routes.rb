Rails.application.routes.draw do
  devise_for :users
  root to: 'products#show'
  resources :products do
    resources :likes
   end
  resources :users, only: [:index, :edit, :show] do
    collection do
      get 'card'
    end
  end
  resources :pages, only: [:index]
end