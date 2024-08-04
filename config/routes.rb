Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :cables
  resources :conduits do
    resources :cables
  end
  resources :projects
  resources :users, only: [:show, :edit, :create, :destroy]

  get '/sign_up', to: 'users#sign_up'
  # get '/sign_up', to: 'users#create'

  get '/sign_in', to: 'sessions#sign_in'
  post '/sign_in', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'
  post '/sign_out', to: 'sessions#destroy'

  root "home#welcome"

end
