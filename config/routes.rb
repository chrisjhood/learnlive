LearnLive::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :reviews

  resources :testimonials

  resources :sections

  resources :courses


  root :to => 'pages#home'
  # match '/auth/facebook/callback', to: 'sessions#create', :as => :login
  # match '/auth/failure', to: 'pages#home'
  # match '/logout', to: 'sessions#destroy', :as => :logout
end
