Rails.application.routes.draw do
  devise_for :users

  root to: "listings#home"
  get "/dashboard", to: "pages#dashboard"
  get "/requests", to: "pages#requests"
  get "/faq", to: "pages#faq"
  get "/testimonials", to: "pages#testimonials"
  get "/payment", to: "pages#payment"

  resources :listings do
    resources :bookings, only: [:create, :show]
  end

  resources :bookings, only: [:update]
  # patch 'bookings/:id', to: 'bookings#update'
end
