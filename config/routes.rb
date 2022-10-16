Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :hosts
  # resources :trainings

  resources :hosts
  resources :trainings


  # controller users
  get 'profile', to: 'users#profile'
  get 'find_a_pole', to: 'users#find_a_pole'

  # hosts controller
  get 'share', to: 'hosts#index'
  post 'new_host', to: 'hosts#create'

  # controller pages
  get 'my_account', to: 'pages#my_account'
  get 'home', to: 'pages#home'
  get 'tutorials', to: 'pages#tutorials'
  get 'shop', to: 'pages#shop'

  # controller trainings
  get "trainings", to: "trainings#index"
  post "new_training", to: "trainings#create"
  get "trainings", to: "trainings#edit"
end
