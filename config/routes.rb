Rails.application.routes.draw do
  devise_for :users
  resources :questions, only: [:show, :index, :new, :create, :update, :edit, :destroy] do
    resources :answers, only: [:new, :create, :update]
  end
  root 'questions#index'
end
