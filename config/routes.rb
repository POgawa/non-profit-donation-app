Donation::Application.routes.draw do
  devise_for :users
  resources :companies, only: [:index, :create, :new, :show]
  resources :users
  resources :charges
  root to: 'companies#index'
end
