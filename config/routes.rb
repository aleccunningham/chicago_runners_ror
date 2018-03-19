Rails.application.routes.draw do
  resources :promotions
  resources :carts
  resources :feedbacks
  resources :customers
  resources :products

  # Reporting
  get 'reports/all'
  get 'reports/sales'
  get 'reports/feedback'

  post '/customers' => 'customers#create'
  # Auth'ed backend
  get 'admin/dashboard'

  # Store frontend
  get 'store/shop'

  # Misc static pages
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/help'
  get 'welcome/privacy'

  get "welcome/search"
  post "welcome/search"

  # Session handling
  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy', as: 'logout'
  get '/signup' => 'customers#new'
  root :to => 'welcome#index'
end
