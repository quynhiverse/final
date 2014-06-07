Final::Application.routes.draw do

  get "/" => 'thebridesmaidshop#index'

# Resource: Reviews

  # --- Create
  get "/thebridesmaidshop/newreview/:id" => 'thebridesmaidshop#new'
  post "/reviews/:id" => 'reviews#create'

  # --- Read
  get "/thebridesmaidshop" => 'thebridesmaidshop#index'
  get "/thebridesmaidshop/:id" => 'thebridesmaidshop#show'

end
