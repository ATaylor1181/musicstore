Rails.application.routes.draw do
  get 'pages/welcome'
  resources :products
  root 'pages#welcome'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
