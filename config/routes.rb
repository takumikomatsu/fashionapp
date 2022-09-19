Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'requests#index'
  resources :requests do
    resources :answers do
      resource :favorites, only: %i[create destroy]
    end
  end
end
