Final::Application.routes.draw do

  get "/" => 'reviews#index'
# Resource: Reviews

  # --- Create
  get "/reviews/new/:id" => 'reviews#new'
  post "/reviews/:id" => 'reviews#create'

  # --- Read
  get "/reviews" => 'reviews#index'
  get "/reviews/:id" => 'reviews#show'

  # -- Update
  get "/reviews/edit/:id" => 'reviews#edit'
  patch "/reviews/:id" => 'reviews#update'

  # --- Delete
  delete "/reviews/:id" => 'reviews#destroy'

end
