# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :entities, only: %i(index show new create edit update destroy)
    resources :letters
    resources :letter_destinations
    resources :letter_origins
    resources :letter_recipients
    resources :letter_repositories
    resources :letter_senders
    resources :mentions
    resources :repositories

    root to: 'entities#index'
  end

  resources :entities
  resources :repositories
  resources :letters
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
