Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated { root to: "pages#home", as: :unauthenticated_root }

    root to: "lessons#index"
    resources :lessons, only: [:show, :index]
    namespace :maintenance do
      resources :lessons, only: [:index, :new, :create, :edit, :update] do
        resource :position, only: :update
      end
    end
    resources :user_exercises, only: [:update]
  end

  get 'demo', to: 'pages#demo'
  get "up" => "rails/health#show", as: :rails_health_check
end
