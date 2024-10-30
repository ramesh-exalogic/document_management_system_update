Rails.application.routes.draw do
  #get 'dashboard/index'
  devise_for :users
  #resources :users
  root to: "dashboard#index"
  get 'dashboard', to: 'dashboard#index'
  #get "/users/sign_out", to: 'devise/sessions#destroy'
  #devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  #delete 'logout', to: 'sessions#destroy', as: :logout

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
