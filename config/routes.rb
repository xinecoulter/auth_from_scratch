AuthFromScratch::Application.routes.draw do

  # These two just give us the better urls
  get "log_in" => "sessions#new", as: "log_in"
  get "sign_up" => "users#new", as: "sign_up"
  get "log_out" => "sessions#destroy", as: "log_out"

  root :to => 'users#new'
  resources :users
  resources :sessions
end
