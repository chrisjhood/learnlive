LearnLive::Application.routes.draw do
  root :to => 'pages#home'
  match '/auth/facebook/callback', to: 'sessions#create', :as => :login
  match '/auth/failure', to: 'pages#home'
  match '/logout', to: 'sessions#destroy', :as => :logout
end
