Rails.application.routes.draw do
  devise_for :users
  resources :questions, only: [:show, :index, :new, :create] do
    resources :answers, only: [:new, :create ]
  end
  root 'questions#index'
end
