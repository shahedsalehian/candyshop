Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shops do
    resources :shelves do
      resources :candies
    end
    resources :candies
  end
  root to: "shops#index"
end


