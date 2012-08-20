LearnLive::Application.routes.draw do
<<<<<<< HEAD
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}
=======
  resources :reviews

  resources :testimonials

  resources :sections

  resources :courses

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
>>>>>>> b345e7995d57d2565fef9ff756938a026b64ffa4

  root :to => 'pages#home'
  # match '/auth/facebook/callback', to: 'sessions#create', :as => :login
  # match '/auth/failure', to: 'pages#home'
  # match '/logout', to: 'sessions#destroy', :as => :logout
end
