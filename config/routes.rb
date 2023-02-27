Rails.application.routes.draw do
  devise_for :users
  root to: "listings#home"
  resources :listings, except: [:index]
end
