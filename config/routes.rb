Rails.application.routes.draw do
  get 'kittens/index'
  get 'kittens/new'
  get 'kittens/create'
  get 'kittens/show'
  get 'kittens/edit'
  get 'kittens/update'
  get 'kittens/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "kittens#index"
end
