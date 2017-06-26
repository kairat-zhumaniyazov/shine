Rails.application.routes.draw do
  get 'customers/index'

  devise_for :users
  root to: 'dashboard#index'

  resources :customers, only: :index
end
