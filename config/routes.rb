Rails.application.routes.draw do
  devise_for :users

  root to: "listings#home"
  get "/bookings", to: "bookings#index"
  resources :listings do
    resources :bookings, except: [:index]
  end
end
