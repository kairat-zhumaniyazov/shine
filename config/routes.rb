Rails.application.routes.draw do
  get 'customers/index'

  devise_for :users
  root to: 'dashboard#index'

  resources :customers, only: [:index, :show]

  get 'angular_test', to: 'angular_test#index'
  get 'fake_billing', to: 'fake_billing#show'
end
