Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: "users/sessions", registrations: "users/registrations"}
  
  #Read List
  get "users", to: "users#index"

  #Show Specific
  get 'users/:id', to: 'users#show', as: 'user'

  #Delete

  root "posts#index"
end