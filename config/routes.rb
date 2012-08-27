LearnLive::Application.routes.draw do
  resources :messages

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :reviews
  resources :testimonials
  resources :sections
  resources :courses

  # resources :users

  match '/get_token' => "sections#get_token"
  match 'courses_url' => "courses#index"
  match 'teach' => "pages#teach"
  match 'signup' => "devise/registrations#new"

  root :to => 'pages#home'
end
