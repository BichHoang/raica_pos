Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'sign_up',
    # sign_up: 'sign_up',
  },
  controllers: {
    sessions: 'api/users/sessions',
    registrations: 'api/users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  namespace 'api', defaults: { format: :json } do
    resources :users, only: [:index]
  end
end
