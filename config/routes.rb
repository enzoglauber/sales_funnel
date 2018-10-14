Rails.application.routes.draw do
  root to: 'home#index'
  # 
  Rails.application.routes.draw do 
    namespace :api do 
      namespace :v1 do 
        resources :stages, only: [:index, :create, :destroy, :update]
        resources :opportunities, only: [:index, :create, :destroy, :update]
      end 
    end 
  end
end