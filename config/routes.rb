# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Swagger documentation
  scope :swagger do
    get '/', to: 'swagger#index', as: 'swagger_root'
    get '/data', to: 'swagger#data', as: 'swagger_data'
  end

  # Cities
  defaults format: :json do
    resources :cities, only: [:index] do
      get '/search', to: 'cities#search', on: :collection

      resources :towns, only: [:index] do
        get '/search', to: 'towns#search', on: :collection
      end
    end
  end
end
