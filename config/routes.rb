Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :announcements
      resources :articles
      resources :notifications

      root to: "users#index"
    end
  devise_for :users, path: 'auth', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }

  root 'welcome#index'

  resources :articles
  resources :announcements, only: [:index]
  resources :notifications, only: [:index]

  get '/terms', to: 'welcome#terms'
  get '/privacy', to: 'welcome#privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
