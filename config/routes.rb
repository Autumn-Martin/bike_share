Rails.application.routes.draw do

  root to: 'welcome#home'
  resources :trips, only: [:index, :show, :destroy, :edit, :update]
  get '/trips-dashboard', to: 'trips#dashboard'


  get 'welcome/home',  to: 'welcome#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/condition-dashboard', to: 'conditions#dashboard'

  resources :orders, only: [:show]

  resources :users, only: [:new, :create, :edit, :update]
  get '/dashboard', to: 'users#dashboard'
  post '/dashboard', to: 'users#dashboard'
  get '/bike_shop', to: 'bike_shop#index'
  get '/stations-dashboard', to: 'stations#dash'

  get '/condition-dashboard', to: 'conditions#dashboard'

  # resources :stations, only: [:index], param: :slug

  resources :conditions, only: [:index, :show]


  resources :accessories, only: [:show], param: :slug

  resources :checkout, only: [:create]

  post '/cart', to: 'carts#create'
  get '/cart', to: 'carts#show'
  delete '/cart', to: 'carts#destroy'
  put '/cart', to:'carts#increase'
  patch '/cart', to:'carts#decrease'

  get '/:slug', to: 'stations#show', as: "station"
  get '/:slug', to: 'stations#new'
  get '/:slug', to: 'stations#edit'
  resources :stations, only: [:index, :update, :destroy, :create], param: :slug

end
