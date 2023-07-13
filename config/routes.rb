Rails.application.routes.draw do
  namespace :posts do
    get 'bookmarks/update'
  end
  devise_for :users

  authenticated :user do
    root "dashboard#show", as: :user_root
  end

  resources :posts do
    resource :bookmark, only: [:update], module: :posts
  end

  get "about" => "static#about"
  get "policy" => "static#policy"
  get "terms" => "static#terms"

  root "home#index"
end
