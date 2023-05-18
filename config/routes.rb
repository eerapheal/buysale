Rails.application.routes.draw do

  root to:'users#index'
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :vendors, only: [:index, :create, :show, :update, :destroy]
      resources :subcategories, only: [:index, :create, :show, :update, :destroy]
      resources :categories,  only: [:index, :create, :show, :update, :destroy]
    end
  end
end
