# frozen_string_literal: true

Rails.application.routes.draw do
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  namespace :admin do
    resources :users
    resources :dishes
    resources :events
    resources :interests
    resources :tours

    root to: 'users#index'
  end
  devise_for :users
  resources :tours, only: [:index] do
    post 'add_tour', on: :collection
  end

  resources :interests, only: [:index] do
    post 'add_interest', on: :collection
  end

  resources :dishes, only: [:index]

  resources :events, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
