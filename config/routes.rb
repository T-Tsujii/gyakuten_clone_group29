Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "text_books#index"

  resources :movies, only: [:index] do
    resource :watches, only: [:create, :destroy]
  end
  resources :aws_texts, only: [:index, :show]
  resources :line_texts, only: [:index, :show]
  resources :text_books, only: [:index, :show] do
    resource :reads, only: [:create, :destroy]
  end
  resources :questions, only: [:create, :index, :show] do
    resources :answers, only: [:create]
  end
end
