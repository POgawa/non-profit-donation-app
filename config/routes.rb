Donation::Application.routes.draw do
  devise_for :users
  resources :companies, only: [:index, :create, :new, :show]
  resources :users
  root to: 'companies#index'
end
