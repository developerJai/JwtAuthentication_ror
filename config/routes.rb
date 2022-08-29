Rails.application.routes.draw do
  # get 'sessions/index'
  # get 'sessions/new'
  # get 'users/index'
  # get 'users/edit'
  # get 'users/new'
  # get 'users/show'



  root to: "users#index"
  get"users/new" => "users#new"
  post"users/create" => "users#create"
  get"users/edit/:id" => "users#edit", as: "users_edit"  
  post "users/update/:id" => "users#update", as: "users_update"
  delete "users/destroy/:id" => "users#destroy", as: "users_destroy"



  get "sessions/index" => "sessions#index"
  get "sessions/new" => "sessions#new"
  post"sessions/create" => "sessions#create"
  get "sessions/destroy" => "sessions#destroy"









  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
