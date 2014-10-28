require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :tasks, only: [:new, :create]
  
  constraints Monban::Constraints::SignedIn.new do
    root "tasks#index", as: 'index'
  end

  constraints Monban::Constraints::SignedOut.new do
    root "sessions#new"
  end
end
