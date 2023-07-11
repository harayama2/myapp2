Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "dashboard#show", as: :user_root
  end

  get "about" => "static#about"
  get "policy" => "static#policy"
  get "terms" => "static#terms"

  root "home#index"
end
