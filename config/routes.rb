Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    get "first_product_url" => "products#first_product_method"
    get "last_product_url" => "products#last_product_method"
    delete "/products/:id" => "products#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    post "/carted_products" => "carted_products#create"
    get "carted_products" => "carted_products#index"

    delete "/carted_products.id" => "carted_products#destroy"
  end
end
