Rails.application.routes.draw do
  ## Note: this file now shows multiple ways to write routes for practice purposes

  # root to: 'welcome#home'
  get '/', to: 'welcome#home', as: 'root' # root to: 'welcome#home'

  # resources :trips, only: [:index, :show]
  get '/trips', to: 'trips#index' # resources :trips, only: [:index]
  get '/trips/:id', to: 'trips#show', as: 'trip' # resources :trips, only: [:show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # resources :orders, only: [:show, :update]
  get '/orders/:id', to: 'orders#show', as: 'order' # resources :orders, only: [:show]
  put '/orders/:id', to: 'orders#update' # resources :orders, only: [:update]
  patch '/orders/:id', to: 'orders#update' # resources :orders, only: [:update]

  # resources :users, only: [:new, :create, :edit, :update]
  get '/users/new', to: 'users#new', as: 'new_user' # resources :users, only: [:new]
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user' # resources :users, only: [:edit]
  post '/users', to: 'users#create', as: 'users' # resources :users, only: [:create]
  put '/users/:id', to: 'users#update', as: 'user' # resources :users, only: [:update]
  patch '/users/:id', to: 'users#update' # resources :users, only: [:update]

  get '/bike-shop', to: 'bike_shop#index'
  get 'admin/bike-shop', to: 'admin/accessories#index'

  get '/dashboard', to: 'users#dashboard'
  post '/dashboard', to: 'users#dashboard'
  get '/stations-dashboard', to: 'stations#dash'
  get '/trips-dashboard', to: 'trips#dashboard'
  get '/condition-dashboard', to: 'conditions#dashboard'


  # resources :conditions, only: [:index, :show]
  get '/conditions', to: 'conditions#index' # resources :conditions, only: [:index]
  get '/conditions/:id', to: 'conditions#show', as: 'condition' # resources :conditions, only: [:show]

  # resources :accessories, only: [:show], param: :slug
  get '/accessories/:slug', to: 'accessories#show', as: 'accessory' # resources :accessories, only: [:show], param: :slug
  #resources :accessories, only: [:index]

  resources :checkout, only: [:create]

  post '/cart', to: 'carts#create'
  get '/cart', to: 'carts#show'
  delete '/cart', to: 'carts#destroy'
  put '/cart', to:'carts#increase'
  patch '/cart', to:'carts#decrease'

  namespace :admin do
    # resources :stations, only: [:update, :destroy, :new, :create, :edit], param: :slug
    # resources :trips, only: [:update, :destroy, :new, :create, :edit]
    # resources :conditions, only: [:update, :destroy, :new, :create, :edit]
    # resource :dashboard, only: [:show]
    resources :accessories, only: [:edit, :update, :toggle, :new, :create], param: :slug do
      patch :update_accessory, on: :member
    end
  end

  # same as namespace :admin do :stations end above
  put '/admin/stations/:slug', to: 'admin/stations#update', as: 'admin_station'
  patch '/admin/stations/:slug', to: 'admin/stations#update'
  delete '/admin/stations/:slug', to: 'admin/stations#destroy'
  get '/admin/stations/new', to: 'admin/stations#new', as: 'new_admin_station'
  post '/admin/stations', to: 'admin/stations#create', as: 'admin_stations'
  get '/admin/stations/:slug/edit', to: 'admin/stations#edit', as: 'edit_admin_station'

  # same as namespace :admin do resources :trips end above
  get '/admin/trips/:id/edit', to: 'admin/trips#edit', as: 'edit_admin_trip'
  put '/admin/trips/:id', to: 'admin/trips#update', as: 'admin_trip'
  patch '/admin/trips/:id', to: 'admin/trips#update'
  delete '/admin/trips/:id', to: 'admin/trips#destroy'
  post '/admin/trips', to: 'admin/trips#create', as: 'admin_trips'
  get '/admin/trips', to: 'admin/trips#new', as: 'new_admin_trip'

  # same as:
    # namespace do
    #   resources :conditions, only: [:update, :destroy, :new, :create, :edit]
    # end
  put '/admin/conditions/:id', to: 'admin/conditions#update', as: 'admin_condition'
  patch '/admin/conditions/:id', to: 'admin/conditions#update'
  delete '/admin/conditions/:id', to: 'admin/conditions#destroy'
  get '/admin/conditions/new', to: 'admin/conditions#new', as: 'new_admin_condition'
  post '/admin/conditions', to: 'admin/conditions#create', as: 'admin_conditions'
  get '/admin/conditions/:id/edit', to: 'admin/conditions#edit', as: 'edit_admin_condition'

  # same as: namespace do dashboard, only: [:show] end
  get 'admin/dashboard/', to: 'admin/dashboards#show', as: 'admin_dashboard'

  # resources :stations, only: [:index]
  get '/stations', to: 'stations#index' # resources :stations, only: [:index]

  get '/:slug', to: 'stations#show', as: "station"

end
