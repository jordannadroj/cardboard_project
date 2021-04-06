Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about', as: 'about'

  resources :events, only: [:show] do
      resources :pieces, only: [:new, :create, :show]
  end






end
