Rails.application.routes.draw do
  devise_for :users
  root 'requests#index'
  resources :requests, only: %i[index new create]
end
