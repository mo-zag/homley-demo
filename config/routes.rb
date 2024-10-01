Rails.application.routes.draw do
  resources :projects, only: [:show] do
    resources :comments, only: [:create]
    patch 'update_status', on: :member
  end
  root 'projects#index'
end
