Rails.application.routes.draw do
  root to: "rambles#index"

  resources :rambles, only: [:index, :create, :show, :destroy, :update]

  resources :users, only: [:show] do
    member do
      post "follow" => "following_relationships#create"
      delete "unfollow" => "following_relationships#destroy"
    end
  end

end
