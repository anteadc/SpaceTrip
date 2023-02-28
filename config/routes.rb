Rails.application.routes.draw do
  devise_for :users

  root to: "listings#home"
  get "/dashboard", to: "pages#dashboard"
  get "/faq", to: "pages#faq"
  get "/testimonials", to: "pages#testimonials"

  resources :listings do
    resources :bookings, only: [:create]
  end
end
