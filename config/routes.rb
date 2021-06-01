Rails.application.routes.draw do
  resources :guests, only: [:show, :index, :create, :update, :destroy ]
end
