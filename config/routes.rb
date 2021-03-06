# frozen_string_literal: true

Rails.application.routes.draw do
  resources :citas
  
  get 'show_match/My_match'
  get 'new_matches/new'
  
  # CRUD's Routes
  # CREATE
  get 'locals/new', to: 'locals#new'
  post 'locals', to: 'locals#create'

  get 'reviews/new'
  post 'reviews/new', to:'reviews#create'

  get 'likes/new', to: 'likes#new'
  post 'likes/new', to: 'likes#create'
  patch 'likes/update', to: 'likes#update'

  get 'citas/new', to: 'citas#new'
  post 'citas/new', to: 'citas#new'
  patch 'citas/new', to: 'citas#update'

  post 'show_match/My_match', to: 'citas#new'

  # READ
  get 'locals/owner', to: 'locals#owner'

  get 'locals',  to: 'locals#index'
  get 'locals/:id', to: 'locals#show', as: 'local'

  get 'likes',  to: 'likes#index'
  get 'likes/:id', to: 'likes#show', as: 'like'

  get 'citas/show',  to: 'citas#show'

  # UPDATE
  get 'locals/:id/edit', to: 'locals#edit', as: :local_edit
  patch 'locals/:id', to: 'locals#update'


  # DELETE
  delete 'locals/:id', to: 'locals#destroy', as: :local_delete
  delete 'likes/:id', to: 'likes#destroy', as: :like_delete

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
  resources :users do
    delete :delete_avatar_attachment
    resources :reviews
  end
  resources :dueno_users do  
    resources :locals
  end
end
