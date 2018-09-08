Rails.application.routes.draw do

  root to: 'welcome#home'
  resources :trips, only: [:index]

  get 'welcome/home',  to: 'welcome#home'
  get '/bike_shop', to: 'bike_shop#index'

  resources :stations, only: [:index, :show], param: :slug

  resources :conditions, only: [:index, :show]

  resources :accessories, only: [:show], param: :slug
end
