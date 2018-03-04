Rails.application.routes.draw do
  resources :drugs, only: [:index, :show, :new, :create]
  get 'profiles', to: 'profiles#show'

  devise_for :users
  root to: 'drugs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
