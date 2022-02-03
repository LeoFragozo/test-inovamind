# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :auth, only: [:create]
      resources :quotes, only: [:index], format: 'json'

      post 'auth/create', to: 'users#create'
      post 'auth/auth', to: 'auth#create'
      get 'quotes/:tag_search', to: 'search#index'
    end
  end
end
