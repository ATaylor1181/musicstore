Rails.application.routes.draw do
  resources :charges
  get 'pages/welcome'
  resources :products
  root 'pages#welcome'
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: 'users/sessions'
  }

  get '/:page' => 'pages#show'
  post 'products/search' => 'products#search', as: 'search_products'
  get '/:page/:category_id' => 'pages#display'
  get '/products/profile/:id' => 'products#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
