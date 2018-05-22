Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :families, only: [:show, :index]
  get "/families?capacity=[:capacity]&price=[:price_pppn]", to: "families#index"
end
