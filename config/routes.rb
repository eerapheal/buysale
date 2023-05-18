Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
    end
  end
  root to:'users#index'
  devise_for :users
  
end
