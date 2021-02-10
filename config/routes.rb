Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :games
  

  post "/login", to: "users#login"
  get "/persist", to: "users#persist"

end
