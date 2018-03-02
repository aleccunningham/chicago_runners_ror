Rails.application.routes.draw do
  get 'reports/all'

  get 'reports/sales'

  resources :customers
  resources :purchases
  resources :users
  resources :products
  get 'sessions/new'

  get 'admin/dashboard'
  get 'store/shop'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/help'
  get 'welcome/privacy'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root :to => 'welcome#index'
end
