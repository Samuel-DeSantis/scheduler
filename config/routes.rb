Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :cables
  resources :conduits
  resources :projects
  resources :users

  root "home#welcome"

end
