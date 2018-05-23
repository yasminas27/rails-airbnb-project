Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/', to: 'families#search_form'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :families
end
