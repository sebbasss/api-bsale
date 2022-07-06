Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'api/v1/categories#index'
  namespace :api do
    namespace :v1 do
      resources :products, only: %i[index show]
      resources :categories, only: %i[show]
    end
  end
end
