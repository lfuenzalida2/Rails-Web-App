Rails.application.routes.draw do
  devise_for :dueno_users, controllers: {sessions: "dueno_users/sessions", registrations: "dueno_users/registrations"}
  devise_for :users, controllers:       {sessions: "users/sessions", registrations: "users/registrations"}

  #Read List
  get "users", to: "users#index"
  get "dueno_users", to: "dueno_users#index"

  #Show Specific
  get 'users/:id',       to: 'users#show',       as: 'user'
  get 'dueno_users/:id', to: 'dueno_users#show', as: 'dueno_user'

  #Delete
  root "posts#index"
end
