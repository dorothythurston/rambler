Rails.application.routes.draw do
  root to: "rambles#index"

  resources :rambles, only: [:index, :create, :show, :destroy] do
    member do
      post "like" => "ramble_likes#create"
      delete "unlike" => "ramble_likes#destroy"
    end
  end

  resources :users, only: [:show] do
    member do
      post "follow" => "following_relationships#create"
      delete "unfollow" => "following_relationships#destroy"
    end
  end

end
