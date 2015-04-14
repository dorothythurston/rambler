Rails.application.routes.draw do
  root to: "rambles#index"

  resources :rambles, only: [:index, :create, :show, :destroy]
end
