Rails.application.routes.draw do
  resources :restaurants, only: [:show, :index, :create, :update, :destroy ] do
    resources :dishes, only: [:index, :create, :update, :destroy]
end
