Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    resources :articles, only: [:create, :index, :show]
  end
end
