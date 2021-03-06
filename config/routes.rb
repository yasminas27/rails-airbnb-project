Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :families do
    resources :bookings, except: [:index]
  end

  get "profile", to: "pages#profile", as: :profile

end
