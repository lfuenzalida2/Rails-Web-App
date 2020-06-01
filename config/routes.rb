# frozen_string_literal: true

Rails.application.routes.draw do
  # CRUD's Routes
  # CREATE
  get 'locals/new', to: 'locals#new'
  post 'locals', to: 'locals#create'

  # READ
  get 'locals',  to: 'locals#index'
  get 'locals/:id', to: 'locals#show', as: 'local'

  # UPDATE
  get 'locals/:id/edit', to: 'locals#edit', as: :local_edit
  patch 'locals/:id', to: 'locals#update'

  # DELETE
  delete 'locals/:id', to: 'locals#destroy', as: :local_delete

  devise_for :dueno_users, controllers: { sessions: 'dueno_users/sessions', registrations: 'dueno_users/registrations' }
  devise_for :users, controllers:       { sessions: 'users/sessions', registrations: 'users/registrations' }

  # Read List
  get 'users', to: 'users#index'
  get 'dueno_users', to: 'dueno_users#index'

  # Show Specific
  get 'users/:id',       to: 'users#show',       as: 'user'
  get 'dueno_users/:id', to: 'dueno_users#show', as: 'dueno_user'

  # Delete
  root 'posts#index'
end
