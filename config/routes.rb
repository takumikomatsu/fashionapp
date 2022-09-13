Rails.application.routes.draw do
  devise_for :users
  root 'requests#index'
  resources :requests do
    resources :answers do
      resource :favorites, only: %i[create destroy]
    end
  end
end
