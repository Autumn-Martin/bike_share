Rails.application.routes.draw do

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


  resources :conditions, only: [:index, :show]

  resources :accessories, only: [:show], param: :slug
  #resources :accessories, only: [:index]

  resources :checkout, only: [:create]

  post '/cart', to: 'carts#create'
  get '/cart', to: 'carts#show'
  delete '/cart', to: 'carts#destroy'
  put '/cart', to:'carts#increase'
  patch '/cart', to:'carts#decrease'

  namespace :admin do
    resources :stations, only: [:update, :destroy, :new, :create, :edit], param: :slug
    resources :trips, only: [:update, :destroy, :new, :create, :edit]
    resources :conditions, only: [:update, :destroy, :new, :create, :edit]
    resource :dashboard, only: [:show]
    resources :accessories, only: [:edit, :update, :toggle, :new, :create], param: :slug do
      patch :update_accessory, on: :member
    end
  end
  resources :stations, only: [:index]

  get '/:slug', to: 'stations#show', as: "station"

end
