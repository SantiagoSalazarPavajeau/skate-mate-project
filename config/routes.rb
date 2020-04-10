Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions
  resources :users, only: [:new, :create, :show]
  resources :locations, only: [:create, :show]
  resources :spots
  root 'users#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
end
