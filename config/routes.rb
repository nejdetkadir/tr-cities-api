# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'swagger#index'

  # Swagger documentation
  scope :swagger do
    get '/data', to: 'swagger#data', as: 'swagger_data'
  end

  # Cities
  defaults format: :json do
    resources :cities, only: [:index, :show] do
      get '/search', to: 'cities#search', on: :collection

      resources :towns, only: [:index] do
        get '/search', to: 'towns#search', on: :collection

        resources :districts, only: [:index] do
          get '/search', to: 'districts#search', on: :collection

          resources :quarters, only: [:index] do
            get '/search', to: 'quarters#search', on: :collection
          end
        end
      end
    end

    resources :towns, only: [:show]
    resources :districts, only: [:show]
    resources :quarters, only: [:show]
  end
end
