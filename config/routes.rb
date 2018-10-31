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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
