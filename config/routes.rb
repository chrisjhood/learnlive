LearnLive::Application.routes.draw do
  resources :reviews

  resources :testimonials

  resources :sections

  resources :courses

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root :to => 'pages#home'
  # match '/auth/facebook/callback', to: 'sessions#create', :as => :login
  # match '/auth/failure', to: 'pages#home'
  # match '/logout', to: 'sessions#destroy', :as => :logout
end
