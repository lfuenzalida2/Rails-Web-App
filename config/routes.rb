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
  end