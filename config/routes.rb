Rails.application.routes.draw do
  resources :lessons, only: [:show]
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
end
