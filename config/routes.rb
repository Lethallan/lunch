Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: :login, sign_out: :logout}

  resources :users, only: %i[show edit update] do
    resources :orders, shallow: true, only: %i[index show]
  end
end
