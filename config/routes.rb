# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :entities, only: %i[index show new create edit update destroy]
    resources :letters, only: %i[index show new create edit update destroy]
    # resources :letter_destinations
    # resources :letter_origins
    # resources :letter_recipients
    # resources :letter_repositories
    # resources :letter_senders
    # resources :mentions, only: %i[index show new create edit update destroy]
    resources :repositories, only: %i[index show new create edit update destroy]
    # get 'entities_by_type/:type', to: 'entity_types#index'

    root to: 'entities#index'
  end

  get '/entities/autocomplete', to: 'entities#autocomplete', defaults: { format: :json }
  get '/entities/list', to: 'entities#list', defaults: { format: :json }
  resources :entities, defaults: { format: :json }
  resources :repositories
  resources :letters, defaults: { format: :json }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'api/docs', to: static('/docs/api/')
end
