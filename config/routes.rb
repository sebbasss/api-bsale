Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'categories#index'
  resources :products, only: %i[index show]
  resources :categories, only: %i[index show]
end
