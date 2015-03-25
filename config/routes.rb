Rails.application.routes.draw do
  devise_for :users
  resources :questions, only: [:show, :index, :new, :create]
  root 'questions#index'
end
