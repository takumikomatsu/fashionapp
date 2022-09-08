Rails.application.routes.draw do
  devise_for :users
  root 'requests#index'
  resources :requests do
    resources :answers, only: %i[new create]
  end
end
