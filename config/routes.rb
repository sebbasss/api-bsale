Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'api/v1/categories#index'
  namespace :api do
    namespace :v1 do
      resources :products, only: %i[index show]
      resources :categories, only: %i[index show]
    end
  end
end

# here I defined the routes, adding the api/v1 namespaces so that it can be upgraded in the future,
# no nesting resources since it was not necessary for the task
# added a simple root so the api can be deployed on heroku
