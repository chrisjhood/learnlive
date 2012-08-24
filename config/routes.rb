LearnLive::Application.routes.draw do
  resources :messages

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :reviews
  resources :testimonials
  resources :sections
  resources :courses

  root :to => 'pages#home'
end
