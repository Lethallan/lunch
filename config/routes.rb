Rails.application.routes.draw do
  root to: 'dashboards#show'

  devise_for :users, path_names: {sign_in: :login, sign_out: :logout}

  resources :users, only: %i[show edit update] do
    resources :orders, shallow: true, only: %i[index show]
  end

  namespace :admin do
    resources :users do
      get :all_users, on: :member
    end
  end

  resources :dashboards, only: %i[show]
end
