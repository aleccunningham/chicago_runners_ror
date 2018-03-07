Rails.application.routes.draw do
  resources :promotions
  resources :carts
  resources :feedbacks
  resources :customers
  resources :products
  # Reporting
  get 'reports/all'
  get 'reports/sales'

  post '/customers' => 'customers#create'
  # Auth'ed backend
  get 'admin/dashboard'

  # Store frontendn
  get 'store/shop'

  get 'reports/all'
  get 'reports/feedback'
  get 'reports/sales'

  # Misc static pages
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/help'
  get 'welcome/privacy'
  # Sessionn handling
  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy', as: 'logout'
  get '/signup' => 'customers#new'
  root :to => 'welcome#index'
end
