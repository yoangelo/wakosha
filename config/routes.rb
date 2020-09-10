Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end
  resources :products
  root to: 'products#index'
end
