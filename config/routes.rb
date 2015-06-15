Rails.application.routes.draw do
  root to: "dashboards#show"

  resource :dashboard, only: [:show]

  resources :rambles, only: [:index, :create, :show, :destroy] do
    member do
      post "like" => "ramble_likes#create"
      delete "unlike" => "ramble_likes#destroy"
    end
  end

  resources :users, only: [:show, :index] do
    member do
      post "follow" => "following_relationships#create"
      delete "unfollow" => "following_relationships#destroy"
    end
  end

end
