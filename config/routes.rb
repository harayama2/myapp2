Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about" => "static#about"
  get "policy" => "static#policy"
  get "terms" => "static#terms"

  # Defines the root path route ("/")
  root "home#index"
end
