Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"
  resources :movies, only: [:index]
  resources :aws_texts, only: [:index, :show]
  resources :line_texts, only: [:index, :show]
  resources :text_books, only: [:index, :show]
  resources :questions, only: [:create, :index, :show] do
    resources :answers, only: [:create]
  end
end
