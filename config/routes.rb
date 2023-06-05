Rails.application.routes.draw do
  get 'documentary/index'
  get 'documentary/new'
  get 'series/index'
  get 'series/new'
  get 'movies/index'
  get 'movies/new'
  get 'pages/index', to: 'pages#index', as: 'pages'
  post 'series' => "series#create"
  post '/series/index', to: 'series#index'

  resources :movies
  resources :series
  resources :documentary
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 root "pages#index"
end
