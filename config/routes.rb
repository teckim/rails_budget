Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :groups, except: [:update] do
    resources :deals
  end

  resources :deals, only: %i[new create]

  # Defines the root path route ("/")
  root 'home#index'
end
