Rails.application.routes.draw do
  resources :products do
    get "/:id/orders", to: "products#product_orders",as: :orders, on: :collection
  end
  root to: "shops#index"

  devise_for :users
  resources :shops

  # Hecho manualmente STOCKS
  get "stocks", to: "stocks#index"
  get "stocks/new", to: "stocks#new", as: :new_stock
  post "stocks",to: "stocks#create"
  get "stocks/:id", to: "stocks#show", as: :show_stock
  get "stocks/:id/edit", to: "stocks#edit", as: :edit_stock
  patch "/stocks/:id", to: "stocks#update", as: :stock
  delete "/stocks/:id", to: "stocks#destroy"
  #other bussines for Stocks
  get "stocks/products/:id", to: "stocks#products_list", as: :products_list




  #hecho manualmente Orders
  get "orders/:id",to: "orders#show_order", as: :show_order
  get "orders/product/:id", to: "orders#order_request", as: :order_request
  post "orders",to: "orders#order_check"
  get "orders",to: "orders#index"
  delete "orders/:id",to: "orders#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
