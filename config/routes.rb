Rails.application.routes.draw do
  get 'documentary/index', as: 'documentaries'
  get 'documentary/new'
  get 'series/index'
  get 'series/new'
  get 'movies/index'
  get 'movies/new'
  get 'pages/index', to: 'pages#index', as: 'pages'
  post 'series/index', to: 'series#create'
  post 'documentary/index', to: 'documentary#create'

  resources :movies
  resources :series
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 root "pages#index"
end
