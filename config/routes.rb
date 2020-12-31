# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  post '/auth', to: 'token#create'
end
