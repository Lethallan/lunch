Rails.application.routes.draw do
  root to: 'dashboards#index'

  devise_for :users, path_names: {sign_in: :login, sign_out: :logout}

  resources :users, only: %i[show edit update] do
    resources :orders, shallow: true, only: %i[index show]
  end

  resources :dishes, only: :show
  resources :dashboards, only: :show

  namespace :admin do
    root to: 'admin/users#index'

    resources :users do
      get :index, on: :member
      get :show, on: :member
    end

    resources :dashboards
    resources :orders
    resources :dishes, except: :destroy
  end

  resources :dashboards, only: %i[index]
end
