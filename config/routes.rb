Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated { root to: "pages#home", as: :unauthenticated_root }

    root to: "lessons#index"
    resources :lessons, only: [:show, :index]
    resource :profile, only: [:show, :update, :edit]
    namespace :maintenance do
      resources :users, only: [:index] do
        resource :admin, only: [:update]
      end
      resources :subscription_plans
      resource :dashboard, only: [:show], controller: :dashboard
      resources :lessons, only: [:index, :new, :create, :edit, :update] do
        resource :position, only: :update
        resource :paid_content, only: :update
        resource :ready, only: :update
      end
    end
    resources :user_exercises, only: [:update]
    resources :user_lessons, only: [:update]
  end

  get 'demo', to: 'pages#demo'
  get "up" => "rails/health#show", as: :rails_health_check
  direct :recommendation do
    'https://www.linkedin.com/in/francois-dumas-lattaque/details/recommendations/?detailScreenTabIndex=0'
  end
  direct :github_repo do
    'https://github.com/francoisedumas/becoming_freelance'
  end
end
