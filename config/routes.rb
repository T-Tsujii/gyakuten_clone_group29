Rails.application.routes.draw do
  root "homes#index"
  resources :movies, only: [:index]
end
