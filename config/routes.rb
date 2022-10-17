Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :hosts
  # resources :trainings
  resources :users do
    resources :trainings, only: [ :new, :create, :update, :show ]
  end
  resources :hosts, only: [:index, :show, :new, :create,:edit, :update, :destroy]
  resources :trainings


  # controller users
  get 'profile', to: 'users#profile'
  get 'find_a_pole', to: 'users#find_a_pole'

  # hosts controller
  get 'share', to: 'hosts#index'
  get '/hosts/:id/edit', to: 'hosts#edit'
  patch '/hosts/:id ', to:'hosts#update'

  # controller pages
  get 'my_account', to: 'pages#my_account'
  get 'home', to: 'pages#home'
  get 'tutorials', to: 'pages#tutorials'
  get 'shop', to: 'pages#shop'

  #controller trainings
  get "trainings", to: "trainings#index"
  post "new_training", to: "trainings#create"
  get "trainings", to: "trainings#edit"
end
