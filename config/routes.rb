Rails.application.routes.draw do

  resources :drugs, only: [:index, :show, :new, :create] do
      resources :reviews
  end

  resources :reviews, only: [:create]

  get 'drugs/:drug_id/favorites/favorite', to: 'favorites#put_in_favorite', as: :put_in_favorite

  get 'profiles', to: 'profiles#show'

  devise_for :users
  root to: 'drugs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
